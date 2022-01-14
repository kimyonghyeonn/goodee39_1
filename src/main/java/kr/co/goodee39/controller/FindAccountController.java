package kr.co.goodee39.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodee39.service.MemberService;
import kr.co.goodee39.vo.MemberVO;

@Controller
@RequestMapping("/find")
public class FindAccountController {
	@Autowired
	MemberService memberService;

	@GetMapping("/find_id")
	public String FindId(@ModelAttribute("memberVO") MemberVO vo) {
		return "find_id";
	}

	@PostMapping("/find_id_confirm")
	public String FindId_Confirm(@ModelAttribute("memberVO") MemberVO vo) {
		memberService.selectUserById(vo);

		return "find_id_confirm";
	}

	@GetMapping("/find_pw")
	public String FindPw(@ModelAttribute("memberVO") MemberVO vo) {

		return "find_pw";
	}

	@PostMapping("/find_pw_confirm")
	public String FindPw_Confirm(@ModelAttribute("memberVO") MemberVO vo) {
		memberService.selectMemberByPw(vo);
		return "find_pw_confirm";
	}

}
