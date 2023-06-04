package com.contact.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.support.Repositories;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.contact.model.Contact;
import com.contact.model.User;
import com.contact.repository.UserRepo;

@RestController
public class ContactManager {

	@Autowired
	UserRepo repo;
	
	@GetMapping("/about")
	public ModelAndView home() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		mv.addObject("title", "Home-Smart contact manager");
		
		return mv;

	}

	@GetMapping("/")
	public ModelAndView about() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("index");
		mv.addObject("title", "about-Smart contact manager");
		
		return mv;

	}

	@PostMapping("myform")
	public ModelAndView myform()
	{
		ModelAndView  mv=new ModelAndView();

		return mv;
	}

}
