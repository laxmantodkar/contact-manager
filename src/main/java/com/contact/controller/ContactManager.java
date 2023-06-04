package com.contact.controller;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.contact.repository.UserRepo;

@RestController
public class ContactManager {

	@Autowired
	UserRepo repo;
	
	@GetMapping("/")
	public ModelAndView home() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index");
		mv.addObject("title", "Home-Smart contact manager");
		
		return mv;
	}
	@GetMapping("/about")
	public ModelAndView about()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("about");
		mv.addObject("title", "About-Smart contact manager");
		return mv;

	}
	@GetMapping("/login")
	public ModelAndView login()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("login");
		mv.addObject("title", "login-Smart contact manager");
		return mv;

	}
	@GetMapping("/singup")
	public ModelAndView singup()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("singup");
		mv.addObject("title", "singup-Smart contact manager");
		return mv;

	}

	

}
