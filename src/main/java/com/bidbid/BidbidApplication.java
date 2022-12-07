package com.bidbid;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class BidbidApplication {

    public static void main(String[] args) {
        SpringApplication.run(BidbidApplication.class, args);
    }

    static {
        System.setProperty("com.amazonaws.sdk.disableEc2Metadata", "true");
    }
}
