package kr.co.goodee39.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.goodee39.service.ProductService;
import kr.co.goodee39.vo.ProductVO;

@Controller
public class HomeController {
	/*
	 * @RequestMapping(value="/", method = RequestMethod.GET) public String home() {
	 * return "index"; }
	 */
	@Autowired
	ProductService productService;
	
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String home(Model model) {
		List<ProductVO> list = productService.showCartItemList();
		model.addAttribute("list", list);
		return "index";
	}

}
