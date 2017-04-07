package com.niit.ShoppingPortal.Dao;

import com.niit.ShoppingPortal.model.User;

public interface UserDao {
	public void insert(User user);
	public User getEmailId(String id);
	public boolean isValid(String email, String pass);

}
