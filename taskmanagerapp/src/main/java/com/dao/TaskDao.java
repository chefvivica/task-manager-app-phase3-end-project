package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.model.Task;


@Repository
public interface TaskDao extends JpaRepository<Task, Integer>{
	
	 

}
