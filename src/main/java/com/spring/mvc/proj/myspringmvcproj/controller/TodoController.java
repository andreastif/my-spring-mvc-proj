package com.spring.mvc.proj.myspringmvcproj.controller;

import com.spring.mvc.proj.myspringmvcproj.repository.TodoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class TodoController {

    private final TodoRepository todoRepository;

    @Autowired
    public TodoController(TodoRepository todoRepository) {
        this.todoRepository = todoRepository;
    }

    @RequestMapping("/list-todos")
    public String listAllTodos(ModelMap modelMap) {
        var todoList = todoRepository.findAll();
        modelMap.addAttribute("todoList", todoList);
        return "list-todo-page";
    }


}
