package com.contact.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.contact.model.User;
import com.contact.repository.UserRepository;

@RestController
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserRepository userRepository;
	
    @GetMapping("/index")
    public ModelAndView UserDashboard(Principal principal)
    {
    	String email=principal.getName();
        User user=userRepository.getUserByUserName(email);
    	System.out.println(user);
        ModelAndView mv=new ModelAndView();
        mv.setViewName("normal/user_dashboard");
        return mv;
    }
    
}
