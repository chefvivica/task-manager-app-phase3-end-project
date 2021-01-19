package com.controller;


import java.sql.Date;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.dao.TaskDao;
import com.dao.UserDao;
import com.exception.DataNotFoundException;
import com.model.Task;
import com.model.User;
import com.service.TaskService;


@RestController
@RequestMapping()
public class TaskController {
	
	@Autowired
	private TaskService taskService;
	@Autowired
	UserDao userDao;
	@Autowired
	TaskDao taskDao;
	


	@GetMapping("/{username}/add-task")
	public ModelAndView showTaskForm(ModelMap model, @PathVariable("username") String username) {
		ModelAndView mv = new ModelAndView("task-form");
		Task task = new Task();
		task.setDescription((String) model.get("description"));	
		task.setStartDate((Date) model.get("startDate"));
		task.setEndDate((Date) model.get("endDate"));
		task.setName((String) model.get("name"));
		task.setSeverity((String) model.get("severity"));	
		model.addAttribute("task", task);
		return mv;
	}
	
	@PostMapping("/{username}/add-task")
	public ModelAndView createTask(@ModelAttribute("task") Task task, @PathVariable("username")String username) {
		User currentUser = userDao.getUserByUsername(username);
		task.setUser(currentUser);
		taskService.addTask(task);
		ModelAndView mv = new ModelAndView("redirect:/{username}/task-list");
		return mv;
	}
	
	@GetMapping("/{username}/update-task/{task.id}")
	public ModelAndView showUpdateForm(ModelMap model, @PathVariable("username") String username, @PathVariable("task.id") int id) throws DataNotFoundException{
		ModelAndView mv = new ModelAndView("update-form");
		Optional<Task> task = Optional.of(new Task());
		task = taskService.findById(id);
		model.put("task", task);
		return mv;
	}
	
	@PostMapping("/{username}/update-task/{task.id}")	
	public  ModelAndView updateTask(ModelMap model, Task task, @PathVariable("username") String username, @PathVariable("task.id") int id) throws DataNotFoundException{
		User user = userDao.getUserByUsername(username);
		task.setUser(user);
		task = taskService.updateTask(task);
		ModelAndView mv = new ModelAndView("redirect:/{username}/task-list");	
		return mv;
	}
	
	@GetMapping("/{username}/delete-task/{task.id}")
	public ModelAndView deleteTask(@PathVariable("task.id") int id,@PathVariable("username") String username )throws DataNotFoundException{			
		User user = userDao.getUserByUsername(username);	
		user.removeTask(id);	
		userDao.save(user);
		taskDao.deleteById(id);
		ModelAndView mv = new ModelAndView("redirect:/{username}/task-list");	
		return mv;
	}
	
	

}
