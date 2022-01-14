package kr.co.goodee39.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.vo.FAQVO;

@Service
public class FAQService {
	@Autowired
	SqlSessionTemplate sqlTemplate;

	// FAQ 게시물 리스트 뿌려주기
	public List<FAQVO> faqlist() {
		return sqlTemplate.selectList("faq.showFaq");

	}

	public void deleteFaq(int faq_num) {
		sqlTemplate.delete("faq.deleteFaq", faq_num);
	}

	public void updateFaq(FAQVO vo) {
		sqlTemplate.update("faq.updateFaq", vo);
	}

	public void insertFaq(FAQVO vo) {
		sqlTemplate.insert("faq.insertFaq", vo);
	}

}
