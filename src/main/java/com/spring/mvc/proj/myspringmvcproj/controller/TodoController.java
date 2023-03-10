package com.spring.mvc.proj.myspringmvcproj.controller;

import com.spring.mvc.proj.myspringmvcproj.entity.Todo;
import com.spring.mvc.proj.myspringmvcproj.repository.TodoRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.time.LocalDate;

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

    @RequestMapping(value="/add-todo", method = RequestMethod.GET)
    public String goToAddTodo(ModelMap modelMap) {
        String username = (String) modelMap.get("name");
        Todo todo = new Todo(username,"","", LocalDate.now().plusYears(99), false);
        modelMap.put("todo", todo);
        return "add-todo-page";
    }

    @RequestMapping(value="/add-todo", method = RequestMethod.POST)
    public String addNewTodo(ModelMap modelMap, @Valid Todo todo, BindingResult result) {
        if (result.hasErrors()) {
            return "add-todo-page";
        }
        String username = (String) modelMap.get("name");
        todoRepository.save(new Todo(username, todo.getTodoName(), todo.getDescription(), todo.getTargetDate(), todo.isDone()));
        return "redirect:list-todos";
    }




}
