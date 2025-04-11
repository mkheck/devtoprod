package com.thehecklers.devtoprod;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DevtoprodController {
    @GetMapping
    public String liveness() {
        return "Dev to Prod demo app is ALIVE!!!!";
    }
    
    @GetMapping("/echo")
    public String echo(@RequestParam(defaultValue = "Hello there!") String message) {
        return "Echo: " + message;
    }
}
