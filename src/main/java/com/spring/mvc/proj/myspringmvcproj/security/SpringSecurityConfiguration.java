package com.spring.mvc.proj.myspringmvcproj.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

import java.util.function.Function;

@Configuration
public class SpringSecurityConfiguration {

    //LDAP or Database for userdetails
    //InMemoryUserDetailsManager
    //InMemoryUserDetailsManager(UserDetails...users)

    @Bean
    public InMemoryUserDetailsManager createUserDetailsManager() {
        //two users that are valid to log in with
        UserDetails userDetails1 = createNewUser("Andreas", "Dummy");
        UserDetails userDetails2 = createNewUser("Diana", "DummyDummy");
        return new InMemoryUserDetailsManager(userDetails1, userDetails2);
    }

    private UserDetails createNewUser(String username, String password) {
        //making use of the passwordEncoder() method as a lambda function
        Function<String, String> passwordEncoderFunc = input -> passwordEncoder().encode(input);
        //encoding the "dummy" according to password encoder (bcrypt)
        UserDetails userDetails = User.builder()
                .passwordEncoder(passwordEncoderFunc)
                .username(username)
                .password(password)
                .roles("USER", "ADMIN") //roles for the person
                .build();
        return userDetails;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
