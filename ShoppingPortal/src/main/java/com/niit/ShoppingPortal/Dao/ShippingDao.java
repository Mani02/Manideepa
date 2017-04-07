package com.niit.ShoppingPortal.Dao;

import com.niit.ShoppingPortal.model.Shipping;

public interface ShippingDao {

	public void insert(Shipping s);
	public Shipping getShippingId(int shippingid);
	public void delete(Shipping s);
}
