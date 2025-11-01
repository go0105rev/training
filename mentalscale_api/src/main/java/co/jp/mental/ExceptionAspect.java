package co.jp.mental;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import co.jp.mental.common.SystemException;

@Aspect
@Component
@Order(1)
public class ExceptionAspect {

    Logger logger = LoggerFactory.getLogger(ExceptionAspect.class);

    @Around("execution(* co.jp.mental.service.*.*(..)) || execution(* co.jp.mental.domain.*.*(..))")
    public Object exceptionInterceptor(ProceedingJoinPoint joinPoint) {

        try {
            return joinPoint.proceed();
        } catch (Throwable e) {

            if (e instanceof SystemException se) {
                logger.error(se.getLogMessage(), se);
            } else {
                logger.error("unknowerror -->", e);
            }

            // TODO NGのjsonレスポンス渡したい。
            return null;

        }

    }
}
