package co.jp.mental;

import java.util.Arrays;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import co.jp.mental.common.Output;
import co.jp.mental.common.ResStatus;
import co.jp.mental.common.SystemException;

@Aspect
@Component
@Order(2)
// TODO ログと例外ハンドリングは共通で実装してしまっている。
public class LoggingAspect {

    Logger logger = LoggerFactory.getLogger(LoggingAspect.class);

    @Around("execution(* co.jp.mental.service.*.*(..))")
    public Object logInterceptor(ProceedingJoinPoint joinPoint) throws Throwable {

        String className = joinPoint.getTarget().getClass().getName();
        
        Object a=null;
        try {

            StringBuilder s = new StringBuilder();
            Arrays.stream(joinPoint.getArgs()).forEach(o -> {
                if (o instanceof Input) {
                    s.append(o.toString());
                } else {
                    throw new SystemException(ResStatus.NG,"引数型誤り");
                }
            });

            logger.info(className + "#" + "-->処理を開始しました。" + s.toString());
            a = joinPoint.proceed();
            if(!(a instanceof Output)) {
                throw new SystemException(ResStatus.NG,"返却値誤り");
            }

            return a;

        } finally {

            logger.info(className + "#"+"-->処理を終了しました。"+a.toString());

        }
    }

}
