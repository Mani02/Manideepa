package com.niit.ShoppingPortal.Dao;

import java.util.List;

import com.niit.ShoppingPortal.model.OrderDetails;

public interface OrderDao {
	
	public void insert(OrderDetails o);
	public OrderDetails getbymail(String mail);
	public OrderDetails getbymail(int oid);
	public List<OrderDetails> getall();

}
