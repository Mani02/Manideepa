package com.niit.ShoppingPortal.DaoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingPortal.Dao.ShippingDao;
import com.niit.ShoppingPortal.model.Shipping;

@Repository
@Transactional
public class ShippingDaoImpl implements ShippingDao{
	@Autowired
	SessionFactory sessionFactory;

	public void insert(Shipping s) {
		sessionFactory.getCurrentSession().persist(s);
		
	}

	public Shipping getShippingId(int shippingid) {
		return (Shipping)sessionFactory.getCurrentSession().get(Shipping.class, shippingid);
	}

	public void delete(Shipping s) {
		sessionFactory.getCurrentSession().delete(s);
	}
	
}