package kr.co.goodee39.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodee39.service.ProductService;
import kr.co.goodee39.vo.CartVO;
import kr.co.goodee39.vo.ProductVO;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	ProductService productService;

	// 인덱스 페이지=> shop페이지로 이동
	@GetMapping("/main")
	public String goShop(Model model) {
		List<ProductVO> list = productService.showCartItemList();
		/* List<ProductVO> avg = productService.showProductAvg(); */
		/* model.addAttribute("avg", avg); */
		model.addAttribute("list", list);

		return "shop";
	}

	// shop페이지 => 상세 제품 페이지 보여줌
	@GetMapping("/1") // shop_fuji로 이동
	public String goFuji(@ModelAttribute("productVO") ProductVO vo, @ModelAttribute("cartVO") CartVO cvo,
			HttpSession session) {

		productService.showCartItem(vo);

		System.out.println("shop.jsp->제품상세페이지 확인:" + vo.getProduct_num());
		return "shop_fuji";

	}

	// shop페이지 => 상세 제품 페이지 보여줌
	@GetMapping("/2") // shop_fuji로 이동
	public String goCodak(@ModelAttribute("productVO") ProductVO vo, @ModelAttribute("cartVO") CartVO cvo,
			HttpSession session) {

		productService.showCartItem(vo);

		System.out.println("shop.jsp->제품상세페이지 확인:" + vo.getProduct_num());
		return "shop_codak";

	}

	// shop페이지 => 상세 제품 페이지 보여줌
	@GetMapping("/3") // shop_fuji로 이동
	public String goBaW(@ModelAttribute("productVO") ProductVO vo, @ModelAttribute("cartVO") CartVO cvo,
			HttpSession session) {

		productService.showCartItem(vo);

		System.out.println("shop.jsp->제품상세페이지 확인:" + vo.getProduct_num());
		return "shop_b&w";

	}

	// shop페이지 => 상세 제품 페이지 보여줌
	@GetMapping("/4") // shop_fuji로 이동
	public String goExp(@ModelAttribute("productVO") ProductVO vo, @ModelAttribute("cartVO") CartVO cvo,
			HttpSession session) {

		productService.showCartItem(vo);

		System.out.println("shop.jsp->제품상세페이지 확인:" + vo.getProduct_num());
		return "shop_expired";

	}

	@GetMapping("/5") // shop_fuji로 이동
	public String goDigital(@ModelAttribute("productVO") ProductVO vo, @ModelAttribute("cartVO") CartVO cvo,
			HttpSession session) {

		productService.showCartItem(vo);

		System.out.println("shop.jsp->제품상세페이지 확인:" + vo.getProduct_num());
		return "shop_digital";

	}

}
