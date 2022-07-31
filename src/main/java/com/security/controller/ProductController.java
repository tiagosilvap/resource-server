package com.security.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/products")
public class ProductController {
    
    @RequestMapping
    public ResponseEntity<String> getProduct() {
        return ResponseEntity.ok("Ola mundo!");
    }
}
