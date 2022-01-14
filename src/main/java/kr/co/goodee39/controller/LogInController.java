package kr.co.goodee39.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodee39.service.MemberService;
import kr.co.goodee39.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class LogInController {
	@Autowired
	MemberService memberService;

	// 로그인창은 대부분 post로 지정하는걸 추천
	@GetMapping("/login")
	public String goLogin() {
		return "login";
	}

	@PostMapping("/login")
	public String checkLogin(@ModelAttribute("memberVO") MemberVO vo, HttpSession session) {

		return memberService.getMember(vo, session);
	} // 성공하면 LoginIndex를 탄다

	@GetMapping("/logout") // 로그아웃 기능
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/member/index";
	}

	@GetMapping("/index")
	public String LoginIndex() {
		return "index";
	}

}
