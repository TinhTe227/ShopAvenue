package vn.devpro.btck_web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.ModelAttribute;

import vn.devpro.btck_web.dto.Cart;
import vn.devpro.btck_web.model.User;



public class BaseController {
	@ModelAttribute("title")
	public String getTitle() {
		return "BTCK";
		
	}
	
	@ModelAttribute("totalCartProducts")
	public Integer getTotalCartProducts(final HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("cart") != null) {
			 Cart cart = (Cart) session.getAttribute("cart");
			 return cart.totalCartProducts();
		}
		
		return 0;
	}
	
	// Lay thong tin cua user dang nhap
	@ModelAttribute("loginedUser")
	public User getLoginedUser() {

		Object loginedUser = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (loginedUser != null && loginedUser instanceof UserDetails) {
			User user = (User) loginedUser;
			//	System.out.println("user email: " + user.getName());
//				System.out.println("user email: " + user.getEmail());
			return user;
		}
		return new User();
	}

	// Kiem tra da login hay chua?
	@ModelAttribute("isLogined")
	public boolean isLogined() {
		Object loginedUser = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (loginedUser != null && loginedUser instanceof UserDetails) {
			return true;
		}
		return false;
	}
}