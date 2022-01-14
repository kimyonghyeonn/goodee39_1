package kr.co.goodee39.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.goodee39.service.CartService;
import kr.co.goodee39.service.ProductService;
import kr.co.goodee39.vo.CartVO;
import kr.co.goodee39.vo.ProductVO;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	CartService cartService;

	@PostMapping("/insert_cart_list")
	public String insert(@ModelAttribute("cartVO") CartVO vo, HttpSession session, RedirectAttributes redirect) {
		System.out.println("장바구니 삽입이 실행됩니다");

		cartService.insertCartItem(vo);
		System.out.println("장바구니에 삽입된 상품 넘버:" + vo.getProduct_num());
		redirect.addAttribute("member_num", vo.getMember_num());
		System.out.println("----------------------------------------------------------------");
		return "redirect:/cart/cart";
	}

	@GetMapping("/cart")
	public ModelAndView cart(@ModelAttribute("cartVO") CartVO vo, HttpSession session,
			@RequestParam("member_num") int num, ModelAndView mav) {
		System.out.println("장바구니 select가 실행됩니다");
		System.out.println("삭제 이후 member_num확인" + vo.getMember_num());
		System.out.println("카트에 들어갈 member_num:" + num);
		int member_num = num;
		Map<String, Object> map = new HashMap<String, Object>();
		List<CartVO> list = cartService.cartList(member_num);
		int sumMoney = cartService.sumCartItem(member_num);

		int fee = sumMoney >= 100000 ? 0 : 2500;

		map.put("allSum", sumMoney + fee);
		map.put("fee", fee);
		map.put("sumMoney", sumMoney);
		map.put("list", list);
		map.put("count", list.size());
		mav.setViewName("cart");
		mav.addObject("map", map);
		session.setAttribute("num", vo.getMember_num());
		System.out.println("----------------------------------------------------------------");
		return mav;
	}

	@GetMapping("/deleteCartItem")
	public String deleteCartItem(@RequestParam int cart_num, RedirectAttributes redirect,
			@RequestParam("member_num") int num, @ModelAttribute("cartVO") CartVO vo) {
		System.out.println("장바구니 삭제가 구현됩니다");
		System.out.println("삭제하려는 카트 번호:" + cart_num);
		cartService.deleteCartItem(cart_num);
		System.out.println("삭제완료");
		redirect.addAttribute("member_num", num);
		/* vo.setMember_num(num); */
		System.out.println("삭제이후 member_num:" + vo.getMember_num());
		System.out.println("----------------------------------------------------------------");
		return "redirect:/cart/cart";
	}

	// 장바구니 수정

	@PostMapping("/updateCartItem")
	public String updateCartItem(@RequestParam int[] amount, @RequestParam int[] cart_num,   HttpSession session, RedirectAttributes redirect,
			@ModelAttribute("cartVO") CartVO vo) {
		System.out.println("장바구니 업데이트가 구현됩니다");
		System.out.println("업데이트 하기 위한 회원 번호:" + vo.getMember_num());
		System.out.println(session.getAttribute("num"));
		int member_num = vo.getMember_num();
	
		
		/* int cart_num = vo.getCart_num(); */
		/*
		 * int pnum = vo.getProduct_num(); System.out.println("업데이트 하기 위한 제품번호:" +
		 * pnum);
		 */

		
		for (int i = 0; i < amount.length; i++) {

			CartVO cvo = new CartVO();
			/* cvo.setProduct_num(pnum); */
			/* cvo.setMember_num(member_num); */
			cvo.setCart_num(cart_num[i]);
			System.out.println("cvo의 카트번호:" + cvo.getCart_num());
			cvo.setAmount(amount[i]);
			System.out.println("cvo의 수량:" + cvo.getAmount());
			/* cvo.setProduct_num(product_num[i]); */
			/* System.out.println("cvo의 제품번호:" + cvo.getProduct_num()); */
			cartService.modifyCart(cvo);
			
			System.out.println("반복문 실행여부 확인" + i + "번째");
			System.out.println("-----------------------------------------------------");

		}
		System.out.println("장바구니 수정 종료");
		redirect.addAttribute("member_num", (int)session.getAttribute("num"));
		
		
		/*
		 * vo.setMember_num((int)session.getAttribute("num"));
		 * System.out.println(vo.getMember_num());
		 */
		return "redirect:/cart/cart";

	}



}
