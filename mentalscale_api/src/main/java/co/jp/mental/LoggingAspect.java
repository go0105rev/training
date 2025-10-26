package co.jp.mental;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import co.jp.mental.common.SystemException;

@Aspect
@Component
//TODO ログと例外ハンドリングは共通で実装してしまっている。
public class LoggingAspect {

    Logger logger= LoggerFactory.getLogger(LoggingAspect.class);
    
    @Around("execution(* co.jp.mental.service.*.*(..)) || execution(* co.jp.mental.domain.*.*(..))")
    public Object logInterceptor(ProceedingJoinPoint joinPoint) {
        try {

            logger.info(joinPoint.getTarget().getClass().getName()+"-->処理を開始しました。");
            
            Object o= joinPoint.proceed();
            
            logger.info(joinPoint.getTarget().getClass().getName()+"-->処理を終了しました。");
            
            return o;

        } catch (Throwable e) {

            if(e instanceof SystemException se) {
                logger.error(se.getLogMessage(),se);
            }else {
                logger.error("unknowerror -->",e);
            }

            //TODO NGのjsonレスポンス渡したい。
            return null;

        }
    }

}
