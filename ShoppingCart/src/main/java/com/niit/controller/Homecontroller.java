package com.niit.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingPortal.Dao.ProductDao;
import com.niit.ShoppingPortal.model.Product;

@Controller
public class Homecontroller {
	@Autowired
	ProductDao pd;

	@RequestMapping(value="/home")
	public ModelAndView showHomepage(){
		ModelAndView  se=new ModelAndView("Home");

		return se;
		
		}	
	@RequestMapping(value="/aboutus")
	public ModelAndView showAboutUspage()
	{
		ModelAndView mv=new ModelAndView("AboutUs");
		return mv;
	}
	@RequestMapping(value="/admin")
	public ModelAndView showAdminPage()
	{
		ModelAndView mv=new ModelAndView("Admin");
		return mv;
	}
	@RequestMapping(value="/contactus")
	public ModelAndView showThanksPage()
	{
		ModelAndView mv=new ModelAndView("ContactUs");
		return mv;
	}
	


}

