package com.service;


import java.util.concurrent.atomic.AtomicBoolean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDao;
import com.model.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Override
	public User addUser(User user) {
		return userDao.save(user);
	}

	@Override
	public Boolean login(String username, String password) {
		AtomicBoolean userExsits = new AtomicBoolean(false);
		User user = new User();
		user = userDao.getUserByUsername(username);
		if(user.getPassword().equals(password)) {
			userExsits.set(true);
		}	
		return userExsits.get();
	}
	

}
