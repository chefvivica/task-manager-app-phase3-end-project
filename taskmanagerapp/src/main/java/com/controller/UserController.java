package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.dao.UserDao;
import com.exception.DataNotFoundException;
import com.model.User;
import com.service.UserService;

@RestController
@RequestMapping()
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	UserDao userDao;
	
	
	@GetMapping("/index")
	public  ModelAndView indexPage() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	
	@GetMapping("/registration")
	public ModelAndView registrationPage(ModelMap model) {
		User user = new User();
		user.setUsername((String) model.get("username"));
		user.setPassword((String) model.get("password"));

		user.setEmail((String) model.get("email"));
		model.addAttribute("user", user);
		ModelAndView mv = new ModelAndView("registration");
		return mv;
	}

	@PostMapping("/registration")
	public ModelAndView register(@ModelAttribute("user") User user)throws DataNotFoundException{
		ModelAndView mv = new ModelAndView("redirect:/login");
		userService.addUser(user);
		return mv;
	}

	@GetMapping("/login")
	public ModelAndView loginPage(ModelMap model) {
		User user = new User();
		String username = (String) model.get("username");
		String password = (String) model.get("password");
		model.addAttribute("usename", username);
		model.addAttribute("password", password);
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}

	@PostMapping("/login")
	public ModelAndView userLogin(@ModelAttribute("username") String username,
			@ModelAttribute("password") String password, ModelMap model) throws DataNotFoundException{
		ModelAndView mv = new ModelAndView("redirect:/welcome/" + username);
		ModelAndView invalidLogin = new ModelAndView("welcome");
		if (userService.login(username, password)) {
			return mv;
		}
		return invalidLogin;
	}
	

	@GetMapping("/welcome/{username}")
	public ModelAndView getWelcome(@PathVariable("username") String username, ModelMap model) {
		model.put("username", username);
		ModelAndView mv = new ModelAndView("welcome");
		return mv;
	}
	
	@GetMapping("/{username}/task-list")
	public ModelAndView getTask(@PathVariable("username") String username,ModelMap model) throws DataNotFoundException{
		ModelAndView mv = new ModelAndView("task-list");
		User currentUser = userDao.getUserByUsername(username);
		model.addAttribute("tasks",currentUser.getTask());
		return mv;
	}
	


}
