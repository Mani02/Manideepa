package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingPortal.Dao.CartDao;
import com.niit.ShoppingPortal.Dao.ProductDao;
import com.niit.ShoppingPortal.Dao.UserDao;
import com.niit.ShoppingPortal.model.Cart;
import com.niit.ShoppingPortal.model.Product;
import com.niit.ShoppingPortal.model.User;

@Controller
public class CartController {
	@Autowired
	CartDao cd;
	@Autowired
	UserDao ud;
	@Autowired
	ProductDao pd;
	@Autowired
	HttpSession hs;
	
	Product p;
	User u;
	
	@RequestMapping(value = "/myCart/add/{productid}" ,method=RequestMethod.POST)
	public ModelAndView getCart(@PathVariable("productid") int productid,@RequestParam("quantity") int qty) {
		if(hs.getAttribute("mv")==null && hs.getAttribute("sm")==null ){
			ModelAndView mv=new ModelAndView("forward:/sp/"+productid);
			Product obj=pd.getProductbyId(productid);
			mv.addObject("p",obj);
			mv.addObject("b4cart", "Please signup or login before adding item to the cart... ");
			return mv;
			}
	
		else{


			String mail=hs.getAttribute("usermail").toString();
			System.out.println(mail);
			
			if(cd.issameproduct(mail, productid)==true){
				ModelAndView mv=new ModelAndView("forward:/sp/"+productid);
				mv.addObject("msg", "products are already in the cart , please continue shopping or checkout!!!");
				return mv;
			}
			else
				p = pd.getProductbyId(productid);
				
				System.out.println(mail);
				Cart c=new Cart();
				c.setProductName(p.getProductName()); 
				System.out.println(c.getProductName());
				c.setPrice(p.getPrice());  
				
				c.setProductid(p.getProductid());
				
				c.setQuantity(qty); 
				c.setTotalprice((p.getPrice())*(qty));
				
			
				c.setCartemail(mail);
				cd.addCart(c);
				System.out.println("data successfully added...");
				ModelAndView mv=new ModelAndView("forward:/cartpage");
				mv.addObject("mssg",  "product is added succesfully in the cart!!");
				return mv;
		 
				
			}
			
		}
	@RequestMapping("/cartpage")
	public ModelAndView showCart(){
		ModelAndView mv=new ModelAndView("MyCart");
		String mail=hs.getAttribute("usermail").toString();
		List<Cart>obj=cd.getCartByUser(mail);
		mv.addObject("allcart",obj);
		return mv;
	}
	@RequestMapping("/remove/{cartid}")
	public String removeCart(@PathVariable("cartid")int cartid){
	Cart c=cd.getCartbyId(cartid);
	cd.deletecart(c);
	return "redirect:/cartpage";
	}
}

