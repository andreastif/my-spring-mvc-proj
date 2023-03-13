package com.spring.mvc.proj.myspringmvcproj.controller;

import com.spring.mvc.proj.myspringmvcproj.service.SpringSecurityService;
import com.spring.mvc.proj.myspringmvcproj.service.TodoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class WelcomeController {

    private final SpringSecurityService springSecurityService;

    @Autowired
    public WelcomeController(SpringSecurityService springSecurityService) {
        this.springSecurityService = springSecurityService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String loginLanding(ModelMap modelMap) {
        modelMap.put("name", springSecurityService.getLoggedInUsername());
        return "welcome-page";
    }

}
