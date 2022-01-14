package kr.co.goodee39.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.goodee39.service.BBSService;
import kr.co.goodee39.service.MemberService;
import kr.co.goodee39.vo.BBSVO;

@Controller
@RequestMapping("/bbs")
public class BBSController {
	@Autowired
	BBSService service;

	@Autowired
	MemberService memberService;

	@GetMapping("/review")
	public String goReview() {
		return "review";
	}

	@GetMapping(value = { "/main", "review_list" })
	public String getBBSList(Model model, @RequestParam(defaultValue = "1") int num,
			@RequestParam(defaultValue = "") String title, @RequestParam(defaultValue = "") String content) {
		service.SelectBBSList(model, num, title, content);
		/* model.addAttribute("avg", service.reviewAvg()); */
		/* return "review_list"; */
		int avg = service.reviewAvg();
		model.addAttribute("avg", avg);
		return "review";
	}

	@GetMapping("/create_review")
	public String goCreateBBS(BBSVO vo) {
		return "review_create";
	}

	@PostMapping("/review_create_result")
	public String insertBBS(BBSVO vo) {
		service.insertBBS(vo);

		return "redirect:/bbs/review_list";
	}
	/*
	 * 리다이렉트를 써주는 이유 예를 들어 글쓰기 요청이 끝난 후에 바로 글 목록이 떠야함 => 바로 글 목록 페이지로 연결해버리면 글 목록을
	 * 띄우기 위해서 다시 한번 DB에 접근해야함 select문을 돌린 후 insert된 게시물 목록을 포함한 새로운 목록이 갱신된 게시물 목록을
	 * 가져와야한다 따라서 요청을 두번 보내야함 첫번째 요청은 insert요청으로 게시물을 추가하는 처리를 해야하는 메서드 이후에 두번째 요청은
	 * select요청으로 insert요청으로 추가된 게시물을 포함한 새로운 목록을 갱신하여 가져오도록 처리하는 메서드 요청을 한번 더
	 * 보내주는것이다 글 삭제도 마찬가지, db에서 delete요청으로 지워버리고 삭제가 완료된 이휴에 다시 글 목록을 보여줄때는 삭제된 새로운
	 * 게시글 목록을 다시한번 db를 통해 수행해야함
	 * 
	 */

	@GetMapping("/review_detail") // 리뷰 상세보기
	public String getDetail(@ModelAttribute("bbsVO") BBSVO vo) {
		service.selectBBS(vo);
		return "review_detail";

	}

	@GetMapping("/review_modify") // 리뷰 수정하기위해 수정 페이지에 데이터 가져옴
	public String updateBBS(@ModelAttribute("BBSVO") BBSVO vo) {
		service.selectBBS(vo);
		return "review_modify";
	}

	@PostMapping("/review_modify_result")
	public String modifiedBBS(@ModelAttribute("BBSVO") BBSVO vo) {

		service.updateBBS(vo);
		System.out.println("리뷰 스코어:" + vo.getReviewscore());

		return "redirect:/bbs/review_list";
	}

	@GetMapping("/review_delete")
	public String deleteBBS(BBSVO vo) {
		service.deleteBBS(vo);
		return "redirect:/bbs/review_list";

	}

}
