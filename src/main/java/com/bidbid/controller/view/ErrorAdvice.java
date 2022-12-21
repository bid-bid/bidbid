package com.bidbid.controller.view;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.el.PropertyNotFoundException;
import javax.persistence.EntityExistsException;

@ControllerAdvice
public class ErrorAdvice {

    @ExceptionHandler(EntityExistsException.class)
    public String entityExists(EntityExistsException e) {
        return "member/signup-form";
    }

    @ExceptionHandler(PropertyNotFoundException.class)
    public String notLogin(PropertyNotFoundException e) {
        return "auth/login-form";
    }

    @ExceptionHandler(RuntimeException.class)
    public String error(RuntimeException e) {
        return "error/page500";
    }

    @ExceptionHandler(BadCredentialsException.class)
    public String cantLogin(BadCredentialsException e) {
        return "auth/login-form";
    }

    @ExceptionHandler(InternalAuthenticationServiceException.class)
    public String invalidLogin(InternalAuthenticationServiceException e) {
        return "auth/login-form";
    }

}
