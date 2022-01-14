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

import kr.co.goodee39.service.FAQService;
import kr.co.goodee39.vo.FAQVO;

@Controller
@RequestMapping("/admin_faqmain")
public class Admin_FAQController {
	@Autowired
	FAQService faqService;

	@GetMapping("/admin_faqmain")
	public String faqMain(Model model) {
		List<FAQVO> list = faqService.faqlist();
		model.addAttribute("list", list);
		return "admin_faqmain";
	}

	@GetMapping("/admin_faqmain_delete")
	public String faqDelete(@RequestParam("faq_num") int faq_num) {
		System.out.println("삭제기능 작동하는지 확인:" + faq_num);
		faqService.deleteFaq(faq_num);
		return "redirect:/admin_faqmain/admin_faqmain";

	}

	@GetMapping("/admin_faqmain_update")
	public String go_admin_faqmain_update(@ModelAttribute("faqVO") FAQVO vo) {
		return "admin_faqupdate";
	}

	@PostMapping("/go_admin_faqmain")
	public String go_faqMain(@ModelAttribute("faqVO") FAQVO vo) {
		faqService.updateFaq(vo);
		return "redirect:/admin_faqmain/admin_faqmain";

	}

	@GetMapping("/admin_faqmain_create")
	public String go_admin_faqmain_insert(@ModelAttribute("faqVO") FAQVO vo) {
		System.out.println("get여기로 타나");
		return "admin_faqinsert";

	}

	@PostMapping("/insert_admin_faqmain")
	public String go_admin_faqmain_confirm(@ModelAttribute("faqVO") FAQVO vo) {
		System.out.println("post여기로 타나");
		faqService.insertFaq(vo);
		return "redirect:/admin_faqmain/admin_faqmain";
	}

}
