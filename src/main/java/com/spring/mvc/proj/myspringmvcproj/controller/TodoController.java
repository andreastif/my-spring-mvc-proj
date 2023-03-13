package com.spring.mvc.proj.myspringmvcproj.controller;

import com.spring.mvc.proj.myspringmvcproj.entity.Todo;
import com.spring.mvc.proj.myspringmvcproj.service.TodoService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@Controller
@SessionAttributes("name")
public class TodoController {

    private final TodoService todoService;

    @Autowired
    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }

    @RequestMapping(value = "/list-todos", method = RequestMethod.GET)
    public String listAllTodos(ModelMap modelMap) {
        List<Todo> todoList = todoService.getAllTodosByName(getLoggedInUsername());
        modelMap.addAttribute("todoList", todoList);
        return "list-todo-page";
    }

    @RequestMapping(value = "/add-todo", method = RequestMethod.GET)
    public String goToAddTodo(ModelMap modelMap) {
        String username = getLoggedInUsername();
        Todo todo = new Todo(username, "", "", LocalDate.now(), false);
        modelMap.put("todo", todo);
        return "add-todo-page";
    }

    @RequestMapping(value = "/add-todo", method = RequestMethod.POST)
    public String addNewTodo(@Valid Todo todo, BindingResult result) {
        if (result.hasErrors()) {
            return "add-todo-page";
        }
        String username = getLoggedInUsername();
        todoService.save(new Todo(username, todo.getTodoName(), todo.getDescription(), todo.getTargetDate(), todo.isDone()));
        return "redirect:list-todos";
    }

    @RequestMapping(value = "/delete-todo", method = RequestMethod.GET)
    public String deleteTodo(Todo todo) {
        todoService.deleteById(todo.getId());
        return "redirect:list-todos";
    }

    @RequestMapping(value = "/update-todo", method = RequestMethod.GET)
    public String goToUpdateTodo(ModelMap model, Todo todo) {
        Todo todoFromDatabase = todoService.getReferenceById(todo.getId());
        model.addAttribute("todo", todoFromDatabase);
        return "update-todo-page";
    }

    @RequestMapping(value = "/update-todo", method = RequestMethod.POST)
    public String updateTodo(@Valid Todo todo) {
        todo.setName(getLoggedInUsername());
        todoService.save(todo);
        return "redirect:list-todos";
    }

    private static String getLoggedInUsername() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authentication.getName();
    }


}
