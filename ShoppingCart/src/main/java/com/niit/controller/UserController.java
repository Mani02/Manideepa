package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingPortal.Dao.ProductDao;
import com.niit.ShoppingPortal.Dao.UserDao;
import com.niit.ShoppingPortal.model.Product;
import com.niit.ShoppingPortal.model.User;

@Controller
public class UserController {
	@Autowired
	ProductDao pd;
	@Autowired
	UserDao ud;
	@Autowired
	HttpSession hs;
	
	User u;

	@RequestMapping(value = "/signup1")
	public String showSingupPage() {
		return "Register";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView showSignUpPage(@ModelAttribute("user") User user) {
		ud.insert(user);
		u = user;
		ModelAndView mv = new ModelAndView("Home");
		hs.setAttribute("successReg", "you have registered successfully!!!");
		mv.addObject("welcomemsg", "Welcome ");
		hs.setAttribute("mv","insert details");
		hs.setAttribute("uname", u.getFirstname());
		hs.setAttribute("usermail", u.getEmail());
		mv.addObject("abc", "!! ");
		return mv;
	}

	@RequestMapping(value = "/Login")
	public ModelAndView showLoginpage() {
		ModelAndView mv = new ModelAndView("Login");
		return mv;
	}

	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public ModelAndView validCredentials(@RequestParam("email") String id, @RequestParam("password") String pwd) {
		if (ud.isValid(id, pwd) == true) {
			User u = ud.getEmailId(id);
			if (u.getRole().equals("admin")) {
				ModelAndView mv = new ModelAndView("Admin");
				hs.setAttribute("smg", "Valid Credentials for Admin");
				hs.setAttribute("usermail",u.getEmail());
				mv.addObject("adminmsg", " Admin!!");
				
				return mv;
			} else {
				ModelAndView mv = new ModelAndView("Home");
				mv.addObject("successmessage", "Valid credentials for user");
				//mv.addObject("welcomemsg", "Welcome ");
				hs.setAttribute("unameuser", u.getFirstname());
				hs.setAttribute("sm","login or sign up");
				hs.setAttribute("usermail",u.getEmail());
				mv.addObject("abc", "!! ");
				return mv;
			}
		} else {
			ModelAndView mv = new ModelAndView("Home");
			mv.addObject("errormessage", "invalid credentials");
			return mv;
		}
	}

	@RequestMapping("/logout")
	public ModelAndView logout() {
		ModelAndView mv = new ModelAndView("Home");
		hs.invalidate();
		return mv;
	}

	@RequestMapping(value = "/sp/{var}")
	public ModelAndView singleProduct(@PathVariable("var") int id) {
		ModelAndView mv = new ModelAndView("SingleProductPage");
		Product p = pd.getProductbyId(id);
		mv.addObject("p", p);
		return mv;

	}

}
