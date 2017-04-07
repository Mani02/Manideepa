package com.niit.ShoppingPortal.Dao;

import java.util.List;

import com.niit.ShoppingPortal.model.Cart;


public interface CartDao {
public void addCart(Cart c);
public void deletecart(Cart c);
public Cart getCartbyId(int cartid);
public List<Cart> getCartByUser(String cartmail);
public boolean issameproduct(String cartemail,int productid);
public List<Cart> getallcartbyuser(String cartmail);
public double gettotalamount(String cartemail);
}
