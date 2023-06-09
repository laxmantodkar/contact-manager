package com.contact.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.contact.helper.Message;
import com.contact.model.User;
import com.contact.repository.UserRepository;


@RestController
public class HomeController {

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	@Autowired
	private UserRepository userRepo;

	@GetMapping("/")
	public ModelAndView home() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/index");
		mv.addObject("title", "Home-Smart contact manager");

		return mv;
	}

	@GetMapping("/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/about");
		mv.addObject("title", "About-Smart contact manager");
		return mv;

	}

	@GetMapping("/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/login");
		mv.addObject("title", "login-Smart contact manager");
		return mv;

	}

	@GetMapping("/singup")
	public ModelAndView singup() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/singup");
		mv.addObject("title", "singup-Smart contact manager");
		return mv;

	}

	@PostMapping("/do_register")
	public ModelAndView doRegister(@ModelAttribute User user,
			@RequestParam(value = "agreement", defaultValue = "false") Boolean agreement) {
		ModelAndView mv = new ModelAndView();
		System.out.println(user);
		try {
			if (!agreement) {
				throw new Exception("check box is not selected");
			} else {
				user.setRole("ROLE_USER");
				user.setEnable(true);
				user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
				mv.addObject("user", new User());
				userRepo.save(user);
				mv.addObject("message", new Message("Successfully Registered !!", "success"));
				mv.setViewName("jsp/singup");
			}
		} catch (Exception e) {
			mv.addObject("user", user);
			mv.addObject("message", new Message("Something went wrong !!", "error"));
			mv.setViewName("jsp/singup");
		}
		return mv;
	}

}
