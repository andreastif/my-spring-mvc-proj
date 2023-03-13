package com.spring.mvc.proj.myspringmvcproj.service;

import com.spring.mvc.proj.myspringmvcproj.entity.Todo;
import com.spring.mvc.proj.myspringmvcproj.repository.TodoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TodoService {

    private final TodoRepository todoRepository;

    @Autowired
    public TodoService(TodoRepository todoRepository) {
        this.todoRepository = todoRepository;
    }

    public List<Todo> findAll() {
        return todoRepository.findAll();
    }

    public void save(Todo todo) {
        todoRepository.save(todo);
    }

    public void deleteById(Long id) {
        todoRepository.deleteById(id);
    }

    public Todo getReferenceById(Long id) {
        return todoRepository.getReferenceById(id);
    }

}