package com.security.api;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "/v1/products", produces = MediaType.APPLICATION_JSON_VALUE)
public class ProductController {
    
    @GetMapping
    public ResponseEntity<String> getProduct() {
        return ResponseEntity.ok("Get product");
    }
    
    @PostMapping
    public ResponseEntity<String> addProduct() {
        return ResponseEntity.ok("Add product");
    }
    
    @PutMapping
    public ResponseEntity<String> updateProduct() {
        return ResponseEntity.ok("Update product");
    }
}
