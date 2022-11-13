package com.security.core;

import com.security.domain.model.Usuario;
import com.security.domain.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.stereotype.Component;

@Component
public class AppSecurity {
    
    @Autowired
    private UsuarioRepository usuarioRepository;
    
    public Authentication getAuthentication() {
        return SecurityContextHolder.getContext().getAuthentication();
    }
    
    public Long getUsuarioId() {
        Jwt jwt = (Jwt) getAuthentication().getPrincipal();
        return jwt.getClaim("usuario_id");
    }
    
    public String getUserName() {
        Jwt jwt = (Jwt) getAuthentication().getPrincipal();
        return jwt.getClaim("user_name");
    }
    
    public boolean isUserDebora() {
        Usuario usuario = usuarioRepository.findByEmail(getUserName())
                .orElseThrow(() -> new UsernameNotFoundException("Usuário não encontrado com e-mail informado"));
        return "email.teste.aw+debora@gmail.com".equals(usuario.getEmail());
    }
}
