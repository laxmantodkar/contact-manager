package com.contact.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.yaml.snakeyaml.tokens.FlowEntryToken;

import com.contact.model.Contact;
import com.contact.model.User;
import com.contact.repository.ContactRepository;
import com.contact.repository.UserRepository;

@RestController
public class UserController {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private ContactRepository contactRepository;

	@PostMapping("/userlogin")
	public ModelAndView UserDashboard(HttpServletRequest request, Model model) {
		ModelAndView mv = new ModelAndView();
		try {

			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
			User user = userRepository.findByEmailAndPassword(userName, password);
			request.getSession().setAttribute("user", user);
			if (user == null) {
				mv.addObject("msg", "Please check user name and password");
				mv.setViewName("jsp/login");
			} else {
				model.addAttribute("user", user);
				mv.setViewName("normal/userdashboard");
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}

	@GetMapping("/getaddcontactform")
	public ModelAndView saveUser(HttpServletRequest request, @ModelAttribute Contact contact) {
		User user = (User) request.getSession().getAttribute("user");
		if (user == null) {
			return new ModelAndView("jsp/login");
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("normal/addcontact");
		return mv;
	}

	@GetMapping("/home")
	public ModelAndView Home(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		System.out.println(user);
		if (user == null) {
			return new ModelAndView("jsp/login");
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("normal/userdashboard");
		return mv;
	}

	@PostMapping("/savecontact")
	public ModelAndView savecontact(HttpServletRequest request, @ModelAttribute Contact contact) {
		User user = (User) request.getSession().getAttribute("user");
		if (user == null) {
			return new ModelAndView("jsp/login");
		}
		ModelAndView mv = new ModelAndView();
		try {
			contact.setUser(user);
			user.getContact().add(contact);
			User savedUser = userRepository.save(user);
			if (user == null) {
				mv.addObject("msg", "Something went wrong !!");

			} else {
				mv.addObject("msg", "Contact add successfully !! ");
			}

		} catch (Exception e) {
			System.out.println(e);
		}
		mv.setViewName("normal/addcontact");
		return mv;
	}
}
