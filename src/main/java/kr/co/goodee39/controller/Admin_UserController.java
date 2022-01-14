package kr.co.goodee39.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodee39.service.MemberService;
import kr.co.goodee39.vo.MemberVO;

@Controller
@RequestMapping("/admin")
public class Admin_UserController {
	@Autowired
	MemberService memberService;

	@GetMapping("/admin_main")
	public String adminMain() {
		return "admin_main";
	}

//회원정보 수정 컨트롤러, list형태로 화면에 뿌려줌 
	@GetMapping("/admin_userupdate")
	public String Admin_UserUpdate(Model model) {
		List<MemberVO> list = memberService.memberList();
		model.addAttribute("list", list);
		return "admin_userupdate";
	}

	@GetMapping("/admin_userupdatepage")
	public String Admin_UserUpdatePage(@ModelAttribute("memberVO") MemberVO vo) {
		return "admin_userupdatepage";

	}

//회원정보 수정
	@PostMapping("/admin_userupdateconfirm")
	public String UserUpdate(@ModelAttribute("memberVO") MemberVO vo) {
		memberService.updateUser(vo);
		return "redirect:/admin/admin_userupdate";

	}

//회원 삭제 페이지 이동
	@GetMapping("/admin_userdelete")
	public String UserDelete(Model model, @ModelAttribute("memberVO") MemberVO vo) {
		List<MemberVO> list = memberService.memberList();
		model.addAttribute("list", list);
		return "admin_userdelete";
	}

//회원 삭제
	@GetMapping("/admin_userdeleteconfirm")
	public String UserDeleteConfirm(MemberVO vo) {
		memberService.deleteUser(vo);
		return "redirect:/admin/admin_userdelete";
	}

}
