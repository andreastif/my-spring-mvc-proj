package com.spring.mvc.proj.myspringmvcproj.repository;

import com.spring.mvc.proj.myspringmvcproj.entity.Todo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.time.LocalDate;

@Component
public class DataSeed implements CommandLineRunner {

    private final TodoRepository todoRepository;

    @Autowired
    public DataSeed(TodoRepository todoRepository) {
        this.todoRepository = todoRepository;
    }

    @Override
    public void run(String... args) throws Exception {
        todoRepository.save(new Todo("Andreas", "Study", "Learn AWS", LocalDate.now().plusYears(1), false));
        todoRepository.save(new Todo("Andreas", "Study", "Learn Reflection", LocalDate.now().plusYears(1), false));
        todoRepository.save(new Todo("Andreas", "Study", "Learn Microservices", LocalDate.now().plusYears(1), false));
        todoRepository.save(new Todo("Andreas", "Study", "Learn TypeScript", LocalDate.now().plusYears(1), false));
        todoRepository.save(new Todo("Diana", "Study", "Read Bengt Lewenguds Architectural Travels", LocalDate.now().plusYears(1), false));
    }
}
