package com.spring.mvc.proj.myspringmvcproj.service;

import org.springframework.stereotype.Service;

@Service
public class LoginAuthenticationService {

    //Fake authentication, just for illustration purposes.
    public boolean authenticate(String name, String password) {
        return !name.isBlank() && !name.isEmpty() && !password.isEmpty() && !password.isBlank();
    }
}