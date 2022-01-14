package kr.co.goodee39.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodee39.service.MemberService;
import kr.co.goodee39.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class SignInController {
	@Autowired
	MemberService service;

	@GetMapping("/sign_in")
	public String SignIn(MemberVO vo) {
		return "sign_in";
	}
	
	
	@GetMapping("/sign_out")
	public String SignOut(MemberVO vo) {
		
		service.deleteUser(vo);
		return "redirect:/";
	}
	
	

	@PostMapping("signInResult")
	public String SignInResult(MemberVO vo) {
		service.setMember(vo);
		return "index";
	}
}
