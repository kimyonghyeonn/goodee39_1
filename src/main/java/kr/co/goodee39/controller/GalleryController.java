package kr.co.goodee39.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/gallery")
public class GalleryController {

	@GetMapping("/gal_main")
	public String goMainGal() {
		return "gallery_main";
	}

	@GetMapping("/gal_nikon")
	public String goNikon() {
		return "gallery_nikon";
	}

	@GetMapping("/gal_pentax")
	public String goPentax() {
		return "gallery_pentax";
	}

	@GetMapping("/gal_polaroid")
	public String goPolaroid() {
		return "gallery_polaroid";
	}

	@GetMapping("/gal_rollei")
	public String goRollei() {
		return "gallery_rollei";
	}

	@GetMapping("/gal_fuji")
	public String goFuji() {
		return "gallery_fuji";
	}

}
