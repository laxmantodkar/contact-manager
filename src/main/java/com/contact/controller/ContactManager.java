package com.contact.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.contact.model.User;
import com.contact.repository.UserRepo;

import ch.qos.logback.core.model.Model;

@RestController
public class ContactManager {

	@Autowired
	private UserRepo userRepo;

	@GetMapping("/")
	public ModelAndView home() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		mv.addObject("title", "Home-Smart contact manager");

		return mv;
	}

	@GetMapping("/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		mv.addObject("title", "About-Smart contact manager");
		return mv;

	}

	@GetMapping("/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		mv.addObject("title", "login-Smart contact manager");
		return mv;

	}

	@GetMapping("/singup")
	public ModelAndView singup() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("singup");
		mv.addObject("title", "singup-Smart contact manager");
		return mv;

	}

	@PostMapping("/do_register")
	public String doRegister(@ModelAttribute User user,
			@RequestParam(value = "agreement", defaultValue = "false") Boolean agreement, Model mode) {
		System.out.println(user);
		if (!agreement) {
			System.out.println("checkBox is not selected");
		}
		user.setRole("User_Role");
		user.setEnable(true);
		return "singup";
	}

}
