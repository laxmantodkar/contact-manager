package com.contact.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.service.annotation.GetExchange;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/user")
public class UserController {

    @GetMapping("/index")
    public ModelAndView UserDashboard()
    {
        ModelAndView mv=new ModelAndView();
        mv.setViewName("normal/user_dashboard");
        return mv;
    }
    
}
