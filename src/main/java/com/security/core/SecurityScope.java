package com.security.core;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import org.springframework.security.access.prepost.PreAuthorize;

public @interface SecurityScope {
    
    @PreAuthorize("hasAuthority('SCOPE_write')")
    @Retention(RUNTIME)
    @Target(METHOD)
    @interface Write { }
    
    @PreAuthorize("hasAuthority('SCOPE_read')")
    @Retention(RUNTIME)
    @Target(METHOD)
    @interface Read { }
}
