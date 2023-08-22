package com.mvcjsp.dao;

import com.mvcjsp.pojo.User;

public interface UserDao {

	boolean addNewUser(User user);
	boolean checkUserCredentials(User user);
}
