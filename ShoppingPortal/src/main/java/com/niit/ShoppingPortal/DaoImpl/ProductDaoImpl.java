package com.niit.ShoppingPortal.DaoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingPortal.Dao.ProductDao;
import com.niit.ShoppingPortal.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao{
	@Autowired
	SessionFactory sessionFactory;
	public List<Product> getAllProduct() {
		
		List<Product>p=sessionFactory.getCurrentSession().createQuery("From Product").list();
		return p;
	}

	public void Insert(Product p) {
		sessionFactory.getCurrentSession().persist(p);
	}

	public void deleteProduct(Product p) {
		sessionFactory.getCurrentSession().delete(p);
		
	}

	public Product getProductbyId(int productid) {
		
		return sessionFactory.getCurrentSession().get(Product.class, productid);
	}

	public void updateProduct(Product p) {
		sessionFactory.getCurrentSession().update(p);
		
	}

	public List<Product> getByCategory(String n) {
		Query q=sessionFactory.getCurrentSession().createQuery("from Product where productCategory=?");
		q.setParameter(0, n);
		return q.list();
	}

}
