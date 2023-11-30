package vn.devpro.btck_web.controller.backend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.devpro.btck_web.controller.BaseController;
import vn.devpro.btck_web.dto.btckConstants;

@Controller
public class AdminHomeController extends BaseController implements btckConstants {

	// view trang home admin
		@RequestMapping(value = "/admin/home", method = RequestMethod.GET)
		public String homeAdmin() {
			return "backend/home";
		}
}
