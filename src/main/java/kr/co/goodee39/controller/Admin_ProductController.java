package kr.co.goodee39.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.goodee39.service.ProductService;
import kr.co.goodee39.vo.ProductVO;

@Controller
@RequestMapping("/admin")
public class Admin_ProductController {
	@Autowired
	ProductService productService;

	@GetMapping("/admin_product_delete")
	public String go_product_delete(Model model, @ModelAttribute("productVO") ProductVO vo) {
		List<ProductVO> list = productService.showCartItemList();
		model.addAttribute("list", list);
		return "admin_product_delete";
	}

	@PostMapping("/delete_product")
	public String go_product_delete_confirm(@RequestParam("product_num") int product_num) {
		productService.deleteCartItem(product_num);
		return "redirect:/admin/admin_product_delete";
	}

}
