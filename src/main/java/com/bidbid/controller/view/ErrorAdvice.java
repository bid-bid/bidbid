package com.bidbid.controller.view;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.persistence.EntityExistsException;

@ControllerAdvice
public class ErrorAdvice {

    @ExceptionHandler(EntityExistsException.class)
    public String entityExists(EntityExistsException e) {
        return "member/signup-form";
    }

    @ExceptionHandler(RuntimeException.class)
    public String error(RuntimeException e) {
        return "error/page500";
    }
}
