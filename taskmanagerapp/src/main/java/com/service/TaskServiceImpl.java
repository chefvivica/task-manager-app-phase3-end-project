package com.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.TaskDao;
import com.model.Task;

@Service
@Transactional
public class TaskServiceImpl implements TaskService{
	
	
	@Autowired
	private TaskDao taskDao;


	@Override
	public void addTask(Task task) {
		taskDao.save(task);		
	}

	@Override
	public Optional<Task> findById(int id) {	
		return taskDao.findById(id);
	}

	@Override
	public Task updateTask(Task task) {
		return taskDao.save(task);
	}
	
	

}
