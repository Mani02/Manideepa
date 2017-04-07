package com.niit.ShoppingPortal.DaoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingPortal.Dao.OrderDao;
import com.niit.ShoppingPortal.model.OrderDetails;

@Repository
@Transactional
public class OrderDaoImpl implements OrderDao{
	@Autowired
	SessionFactory sessionFactory;
	
	public void insert(OrderDetails o) {
		sessionFactory.getCurrentSession().persist(o);
		
	}

	public OrderDetails getbymail(String mail) {
		return sessionFactory.getCurrentSession().get(OrderDetails.class,mail);
	}

	public OrderDetails getbymail(int oid) {
		return sessionFactory.getCurrentSession().get(OrderDetails.class,oid);
	}

	public List<OrderDetails> getall() {
		return sessionFactory.getCurrentSession().createQuery("from Order").list();
	}

}
