package vn.devpro.btck_web.controller.backend;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.devpro.btck_web.controller.BaseController;
import vn.devpro.btck_web.dto.SearchModel;
import vn.devpro.btck_web.dto.btckConstants;
import vn.devpro.btck_web.model.Category;
import vn.devpro.btck_web.model.SaleOrder;
import vn.devpro.btck_web.model.User;
import vn.devpro.btck_web.service.SaleOrderService;
import vn.devpro.btck_web.service.UserService;



@Controller
public class AdminSaleOrderController extends BaseController implements btckConstants{

	@Autowired
	private SaleOrderService saleOrderService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "admin/order-list", method = RequestMethod.GET)
	public String orderList(final Model model, final HttpServletRequest request) throws IOException {
		//lay danh sach user tu tbl_user trong db
		
				SearchModel orderSearch = new SearchModel();
				
				//tim kiem voi tieu chi status
				orderSearch.setStatus(2);
				if(!StringUtils.isEmpty(request.getParameter("status"))) {
					orderSearch.setStatus(Integer.parseInt(request.getParameter("status")));
				}
				
				//tim kiem voi tieu chi keyword
				orderSearch.setKeyword(request.getParameter("keyword"));
				
				//tim kiem voi tieu chi date
				orderSearch.setBeginDate(request.getParameter("beginDate"));
				orderSearch.setEndDate(request.getParameter("endDate"));
				
				List<SaleOrder> saleOrders =saleOrderService.searchOrder(orderSearch);
				model.addAttribute("saleOrders", saleOrders);
				return "backend/order-list";
				
	}
	
	//------edit order---------------
		@RequestMapping(value = "/admin/order-edit/{saleOrderId}", method = RequestMethod.GET)
		public String orderEdit(final Model model, @PathVariable("saleOrderId") int saleOrderId )//lay categoryId khi ngta click edit
				throws IOException {
			//lay order tu tbl_sale_order trong db
			
			SaleOrder saleOrder = saleOrderService.getById(saleOrderId);
			model.addAttribute("saleOrder", saleOrder);

			List<User> users = userService.findAll();
			model.addAttribute("users", users);
			return "backend/order-edit";
		}
		
		 //Save order edit to db
		@RequestMapping(value = "/admin/order-edit-save", method = RequestMethod.POST)
		public String orderEditSave(final Model model, final HttpServletRequest request, @ModelAttribute("saleOrder") SaleOrder saleOrder) throws IOException {
				User user = new User();
				user.setId(1);
				
				saleOrder.setUser(user);
				//luu order vao bang tbl_saleorder
				saleOrderService.saveOrUpdate(saleOrder);
			
			return "redirect:/admin/order-list";
		}
}
