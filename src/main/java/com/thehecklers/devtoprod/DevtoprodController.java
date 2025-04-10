package com.thehecklers.devtoprod;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DevtoprodController {
    @GetMapping
    public String liveness() {
        return "Dev to Prod demo app is ALIVE!!!!";
    }
}
