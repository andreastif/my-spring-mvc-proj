package com.spring.mvc.proj.myspringmvcproj.controller;

import com.spring.mvc.proj.myspringmvcproj.service.LoginAuthenticationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {

    private final LoginAuthenticationService loginAuthenticationService;

    @Autowired
    public LoginController(LoginAuthenticationService loginAuthenticationService) {
        this.loginAuthenticationService = loginAuthenticationService;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginLanding() {
        return "login-page";
    }

    //Fake authentication, just for illustration purposes
    @RequestMapping(value="/login", method = RequestMethod.POST)
    public String login(@RequestParam(value = "name") String name,
                        @RequestParam(value = "password") String password,
                        ModelMap modelMap) {
        if (loginAuthenticationService.authenticate(name, password)) {
            modelMap.put("name", name);
            return "redirect:list-todos"; //anropar TodoControllerns listAllTodos("/list-todos") mha redirect:/URL
        }
        modelMap.put("errorMsg", "Invalid Credentials, please try again");
        return "login-page";
    }

}
