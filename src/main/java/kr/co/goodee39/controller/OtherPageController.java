package kr.co.goodee39.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OtherPageController {
	@GetMapping("/shop")
	public String goShop() {
		return "shop";
	}

	@GetMapping("/review1")
	public String goReview1() {
		return "review1";
	}

	@GetMapping("/about")
	public String goAbout() {
		return "about";
	}

	@GetMapping("/contact")
	public String goContact() {
		return "contact";
	}

	@GetMapping("/faq")
	public String goFAQ() {
		return "FAQ";
	}

}
