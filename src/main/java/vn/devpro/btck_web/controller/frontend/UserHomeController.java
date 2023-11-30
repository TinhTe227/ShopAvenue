package vn.devpro.btck_web.controller.frontend;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import vn.devpro.btck_web.controller.BaseController;
import vn.devpro.btck_web.dto.SearchModel;
import vn.devpro.btck_web.dto.btckConstants;
import vn.devpro.btck_web.model.Product;
import vn.devpro.btck_web.model.ProductImage;
import vn.devpro.btck_web.service.ProductImageService;
import vn.devpro.btck_web.service.ProductService;


@Controller
public class UserHomeController extends BaseController implements btckConstants{
	
	@Autowired
	private ProductService productService;
	
	@Autowired 
	private ProductImageService productImageService;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String index(final Model model , final HttpServletRequest request, final HttpServletResponse response ) throws IOException{
		return "frontend/home";
	}
	
	
	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(final Model model , final HttpServletRequest request, final HttpServletResponse response ) throws IOException{
		SearchModel productSearch = new SearchModel();
		
		
		List<Product> products = productService.findAllActive();
		
		model.addAttribute("products", products);
		model.addAttribute("productSearch", productSearch);
		return "frontend/category";
	}
	
	@RequestMapping(value = "/product_view/{productId}", method = RequestMethod.GET)
	public String productDetail(final Model model , final HttpServletRequest request, final HttpServletResponse response, @PathVariable("productId") int productId ) throws IOException{
		
		Product product = productService.getById(productId);
		model.addAttribute("product", product);
	
		List<ProductImage> productImages = productImageService.findAllImage(productId);
		model.addAttribute("productImages", productImages);
		return "frontend/product_view";
	}
	
	
}
