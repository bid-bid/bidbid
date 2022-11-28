package com.bidbid.aspect;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Slf4j
@Component
public class LogIntroduction {

    @Before("execution(* com.bidbid.controller..*Controller.*(..))")
    public void controllerLog(JoinPoint joinPoint) {
        log.info("{}",joinPoint.getSignature());
    }
}
