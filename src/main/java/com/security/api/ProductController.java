package com.security.api;

import com.security.core.SecurityScope;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.DeleteMapping;
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
        System.out.println(SecurityContextHolder.getContext().getAuthentication().getAuthorities());
        return ResponseEntity.ok("Get product");
    }
    
    @SecurityScope.Write
    @SecurityScope.Read
    @PreAuthorize("hasAuthority('GERENCIAR_PEDIDOS')")
    @PostMapping
    public ResponseEntity<String> addProduct() {
        return ResponseEntity.ok("Add product");
    }
    
    @PreAuthorize("hasAuthority('EDITAR_PRODUTOS')")
    @PutMapping
    public ResponseEntity<String> updateProduct() {
        return ResponseEntity.ok("Update product");
    }
    
    @SecurityScope.Read
    @PreAuthorize("isAuthenticated()")
    @DeleteMapping
    public ResponseEntity<String> deleteProduct() {
        return ResponseEntity.ok("Delete product");
    }
}
