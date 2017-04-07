package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingPortal.Dao.CartDao;
import com.niit.ShoppingPortal.Dao.OrderDao;
import com.niit.ShoppingPortal.Dao.ProductDao;
import com.niit.ShoppingPortal.Dao.ShippingDao;
import com.niit.ShoppingPortal.Dao.UserDao;
import com.niit.ShoppingPortal.model.Cart;
import com.niit.ShoppingPortal.model.OrderDetails;
import com.niit.ShoppingPortal.model.Product;
import com.niit.ShoppingPortal.model.Shipping;
import com.niit.ShoppingPortal.model.User;



@Controller
public class ShippingController {
	@Autowired
	ShippingDao sd;
	@Autowired
	UserDao ud;
	@Autowired
	ProductDao pd;
	@Autowired
	CartDao cd;
	@Autowired
	OrderDao od;
	
	@Autowired
	HttpSession hs;
	
	int shippingid ;
	int productID;
	int Quantity;
	
	Shipping ship;
	Cart c;
	Product p;
	
	OrderDetails or;
	
	@RequestMapping("/view2/{productid}")
	public ModelAndView buynow(@ModelAttribute("p") Product p,@PathVariable("productid") int productid) {
		if(hs.getAttribute("mv")==null && hs.getAttribute("sm")==null){
			ModelAndView mv=new ModelAndView("forward:/sp/"+productID);
			Product obj=pd.getProductbyId(productid);
			
			
			
			mv.addObject("p",obj);
			mv.addObject("b4cart", "Please signup or login before buying product... ");
			   productID=productid;
		       p=obj;
		     
		      
		       System.out.println("Imran is checking pp contains product obj or nor by product name "+p.getProductName());
		       System.out.println(productID);
		      
			return mv;
			}
		else
		{
		
       ModelAndView mv=new ModelAndView("redirect:/billingpage");
       Product obj=pd.getProductbyId(productid);

		String mail=hs.getAttribute("usermail").toString();
       int pid=obj.getProductid();
		String pname=obj.getProductName();
		String cat=obj.getProductCategory();
		double pprice=obj.getPrice();
		double totprice=pprice;
		or=new OrderDetails();
		or.setEmailId(mail);
		or.setProductid(pid);
		or.setProductname(pname);
		or.setCategory(cat);
		or.setProductprice(pprice);
		// or.setQuantity(qty);
		or.setTotalprice(totprice);
		od.insert(or);
      
       productID=or.getOrderid();
       p=obj;
      // Quantity=add.getQuantitybyProductId(productid);
       System.out.println("Imran is checking pp contains product obj or nor by product name "+p.getProductName());
       System.out.println(productID);
      // System.out.println("Quantity ="+Quantity);
       
    
    
		return mv;

		}
	}
	@RequestMapping("/billingpage")
	public ModelAndView buy(){
		
		
			String mail=hs.getAttribute("usermail").toString();
			System.out.println(mail);
		ModelAndView mv=new ModelAndView("BillingAddress");
		
	User user=	ud.getEmailId(mail);

	mv.addObject("u",user);
		return mv;
		
	
	}
	
	@RequestMapping("/shipping")
	public ModelAndView shipping(){
		ModelAndView mv=new ModelAndView("ShippingAddress");
		
		return mv;
	}
	
	@RequestMapping("/orderconfirm")
	public ModelAndView postshipping(@ModelAttribute ("s")Shipping s){
		String mail=hs.getAttribute("usermail").toString();
		ship=new Shipping();
		ship.setEmail(mail);
		sd.insert(s);
		shippingid=s.getShippingid();
		ModelAndView mv=new ModelAndView("redirect:/orderconfirm2");
		return mv;
	}
	@RequestMapping("/orderconfirm2")
	public ModelAndView order(){
		ModelAndView mv=new ModelAndView("Order");
		String mail=hs.getAttribute("usermail").toString();
		if(productID==0){
		List<Cart> obj=cd.getallcartbyuser(mail);
		mv.addObject("allcart",obj);
		double d=cd.gettotalamount(mail);
		System.out.println("grandTot= "+d);
		mv.addObject("grandtot",d);
		}
		else{
			mv.addObject("p","msg is written to make p not empty");
			mv.addObject("o",od.getbymail(productID));
			or.getQuantity();
			System.out.println("Mani......"+or.getQuantity());	
		}
		User u=ud.getEmailId(mail);
		mv.addObject("u",u);
		Shipping uu=sd.getShippingId(shippingid);
		mv.addObject("uu",uu);
		return mv;
	} 
	@RequestMapping("/thankyou")
	public ModelAndView thankyou(){
		ModelAndView mv=new ModelAndView("ThankingYou");
		return mv;
	}

}
