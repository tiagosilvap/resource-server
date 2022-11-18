package com.security.api;

import com.security.core.AppSecurity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "/v1/products", produces = MediaType.TEXT_PLAIN_VALUE)
public class ProductController {
    
    @Autowired
    private AppSecurity appSecurity;
    
    @PreAuthorize("hasAuthority('GERENCIAR_PEDIDOS') or @appSecurity.userDebora")
    @GetMapping(produces=MediaType.TEXT_PLAIN_VALUE)
    public ResponseEntity<String> getProduct() {
        System.out.println(appSecurity.getAuthentication().getAuthorities());
        return ResponseEntity.ok("Get product");
    }
    
    @PreAuthorize("hasAuthority('SCOPE_READ') and hasAuthority('SCOPE_WRITE') and hasAuthority('GERENCIAR_PEDIDOS')")
    @PostMapping
    public ResponseEntity<String> addProduct() {
        return ResponseEntity.ok("Add product");
    }
    
    @PreAuthorize("hasAuthority('SCOPE_WRITE') and hasAuthority('EDITAR_PRODUTOS')")
    @PutMapping
    public ResponseEntity<String> updateProduct() {
        return ResponseEntity.ok("Update product");
    }
    
    @PreAuthorize("hasAuthority('SCOPE_READ') and isAuthenticated()")
    @DeleteMapping
    public ResponseEntity<String> deleteProduct() {
        return ResponseEntity.ok("Delete product");
    }
}
