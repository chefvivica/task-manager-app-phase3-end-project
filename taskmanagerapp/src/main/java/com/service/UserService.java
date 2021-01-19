package com.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.model.User;


@Service
@Transactional
public interface UserService {
	
	public User addUser(User user);
	public Boolean login(String username, String password);

}
