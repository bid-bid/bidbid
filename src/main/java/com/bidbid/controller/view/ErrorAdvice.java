package com.bidbid.controller.view;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ErrorAdvice {
    @ExceptionHandler(RuntimeException.class)
    public String error(RuntimeException e) {
        return "error/page500";
    }
}
