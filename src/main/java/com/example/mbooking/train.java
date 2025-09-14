package com.example.mbooking;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class train {
    @GetMapping("/flight")
    public String getData() {
        return "Please  book all your flight from makemytip at 20% discount";
    }
    @GetMapping("/spincejetflight")
    public String putData() {
        return "Please  book all your flight from makemytip at 20% discount";
    }
}