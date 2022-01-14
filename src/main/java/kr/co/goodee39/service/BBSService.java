package kr.co.goodee39.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.goodee39.vo.BBSVO;

@Service
public class BBSService {
	@Autowired
	SqlSessionTemplate sqlTemplate;

	@Autowired
	BBSVO vo;

	public void SelectBBSList(Model model, int num, String title, String content) {
		BBSVO vo = new BBSVO();
		vo.setStart((num - 1) * vo.getCount());

		if (!title.equals("")) {
			model.addAttribute("title", title);
			vo.setTitle("%" + title + "%");
		}
		if (!content.equals("")) {
			model.addAttribute("content", content);
			vo.setContent("%" + content + "%");
		}

		model.addAttribute("count", sqlTemplate.selectOne("bbs.selectBBSCount", vo));
		model.addAttribute("list", sqlTemplate.selectList("bbs.selectBBSList", vo));
		model.addAttribute("num", num);

	}

	public void insertBBS(BBSVO vo) {
		sqlTemplate.insert("bbs.insertBBS", vo);
	}

	public void selectBBS(BBSVO vo) {
		BBSVO vo2 = sqlTemplate.selectOne("bbs.selectBBS", vo);
		vo.setNum(vo2.getNum());
		vo.setTitle(vo2.getTitle());
		vo.setContent(vo2.getContent());
		vo.setOwneremail(vo2.getOwneremail());
		vo.setOwnername(vo2.getOwnername());
		vo.setCreatedate(vo2.getCreatedate());
		vo.setIsdelete(vo2.getIsdelete());
		vo.setProductscore(vo2.getProductscore());
		vo.setDeleveryscore(vo2.getDeleveryscore());
		vo.setReviewscore(vo2.getReviewscore());

	}

	public void updateBBS(BBSVO vo) {

		sqlTemplate.update("bbs.updateBBS", vo);

	}

	public void deleteBBS(BBSVO vo) {
		sqlTemplate.delete("bbs.deleteBBS", vo);
	}

	// 별점 구하기 메소드
	public int reviewAvg() {
		return sqlTemplate.selectOne("bbs.reviewAvg");
	}

}
