package com.niit.ShoppingPortal.Dao;

	import java.util.List;
	import com.niit.ShoppingPortal.model.Product;


	public interface ProductDao {
		public List<Product> getAllProduct();
		public void Insert(Product p);
		public void updateProduct(Product p);
		public void deleteProduct(Product p);
		public Product getProductbyId(int productid);
		public List<Product> getByCategory(String n);
	}


