package com.niit.ShoppingPortal.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;
@Component
@Entity
public class Cart {
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private int cartid;
		private int productid;
		private String cartemail;
		private String productName;
		private double price;
		private double quantity;
		private double totalprice;
		private double grandtotal;
		public int getCartid() {
			return cartid;
		}
		public void setCartid(int cartid) {
			this.cartid = cartid;
		}
		public int getProductid() {
			return productid;
		}
		public String getCartemail() {
			return cartemail;
		}
		public void setCartemail(String cartemail) {
			this.cartemail = cartemail;
		}
		public void setProductid(int productid) {
			this.productid = productid;
		}
		public String getProductName() {
			return productName;
		}
		public void setProductName(String productName) {
			this.productName = productName;
		}
		public double getPrice() {
			return price;
		}
		public void setPrice(double price) {
			this.price = price;
		}
		public double getQuantity() {
			return quantity;
		}
		public void setQuantity(double quantity) {
			this.quantity = quantity;
		}
		public double getTotalprice() {
			return totalprice;
		}
		public void setTotalprice(double totalprice) {
			this.totalprice = totalprice;
		}
		public double getGrandtotal() {
			return grandtotal;
		}
		public void setGrandtotal(double grandtotal) {
			this.grandtotal = grandtotal;
		}

}
