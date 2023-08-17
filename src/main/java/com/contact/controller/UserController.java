package com.contact.controller;

import java.util.Base64;
import java.util.List;

import javax.print.attribute.standard.ReferenceUriSchemesSupported;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.sql.MckoiCaseFragment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
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
	public ModelAndView savecontact(HttpServletRequest request, @ModelAttribute Contact contact,
			@RequestParam("image") MultipartFile image) {
		User user = (User) request.getSession().getAttribute("user");
		if (user == null) {
			return new ModelAndView("jsp/login");
		}
		ModelAndView mv = new ModelAndView();
		try {
			if (!image.isEmpty()) {
				contact.setProfileImage(image.getBytes());
				contact.setImageName(image.getName());
			}
			contact.setUser(user);
			user.getContact().add(contact);
			User savedUser = userRepository.save(user);
			if (savedUser == null) {
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

	@GetMapping("viewcontact")
	public ModelAndView showAllContact(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		ModelAndView mv = new ModelAndView();
		if (user == null) {
			mv.setViewName("jsp/login");
			return mv;
		}
		try {
			List<Contact> contact = contactRepository.findAllContactByUserId(user.getId());
			contact.forEach(i -> {
				if (i.getProfileImage() != null) {
					byte[] image = i.getProfileImage();
					i.setImageName(Base64.getEncoder().encodeToString(image));
					Base64.getEncoder().encodeToString(image);
				}
			});
			mv.addObject("contact", contact);
			mv.setViewName("normal/viewcontact");

		} catch (Exception e) {
			System.out.println(e);
		}

		return mv;

	}

	@GetMapping("/viewsinglecontact/{id}")
	public ModelAndView viewSingleContact(HttpServletRequest request, @PathVariable("id") int id) {
		User user = (User) request.getSession().getAttribute("user");
		ModelAndView mv = new ModelAndView();
		if (user == null) {
			mv.setViewName("jsp/login");
			return mv;
		}
		try {
			mv.setViewName("normal/viewsinglecontact");
			Contact contact = contactRepository.findContactBycId(id);
			if (contact.getProfileImage() != null) {
				byte[] image = contact.getProfileImage();
				String a = Base64.getEncoder().encodeToString(image);
				contact.setImageName(a);
			}
			mv.addObject("contact", contact);
		} catch (Exception e) {
			System.out.println(e);
		}

		return mv;
	}
}
