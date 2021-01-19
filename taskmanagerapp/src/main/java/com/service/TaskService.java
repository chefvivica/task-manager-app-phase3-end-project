package com.service;


import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.Task;


@Service
@Transactional
public interface TaskService{
	
	public void addTask(Task task);
	public Optional<Task> findById(int id);
	public Task updateTask(Task task);
	
}
