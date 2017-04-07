package com.niit.ShoppingPortal.DaoImpl;

import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingPortal.Dao.UserDao;
import com.niit.ShoppingPortal.model.User;
@Repository
@Transactional
public class UserDaoImpl implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;
	public void insert(User user) {
		sessionFactory.getCurrentSession().persist(user);
		
	}

	public User getEmailId(String id) {
		return sessionFactory.getCurrentSession().get(User.class, id);
	}

	public boolean isValid(String email, String pass) {
		String hql="from User where email ='" + email+"' and password ='" + pass +"'";
		if(sessionFactory.getCurrentSession().createQuery(hql).uniqueResult()==null)
		{
		return false;
		}
		return true;
	}

}
