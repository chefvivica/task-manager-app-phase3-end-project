package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.model.User;


@Repository
public interface UserDao extends JpaRepository<User, Integer>{
	
	 @Query("SELECT u FROM User u WHERE u.username = :username")
	 public User getUserByUsername(@Param("username") String username);
	 
	
	 
}
