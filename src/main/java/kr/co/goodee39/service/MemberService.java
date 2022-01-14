package kr.co.goodee39.service;

import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.vo.MemberVO;

@Service
public class MemberService {

	@Autowired
	SqlSessionTemplate sqlTemplate;

	public void setMember(MemberVO vo) {
		sqlTemplate.insert("member.insertMember", vo);
	}

	public String getMember(MemberVO vo, HttpSession session) {
		MemberVO vo1 = sqlTemplate.selectOne("member.selectMember", vo);
		String path = "";
		if (vo1.getRole() != null) {
			System.out.println("admin 로그인 확인:" + vo1.getRole());
			session.setAttribute("account", vo1);
			path = "redirect:/admin/admin_main";
		} else if (vo1.getRole() == null) {
			System.out.println("일반 유저(null) 확인:" + vo1.getRole());
			session.setAttribute("account", vo1);
			path = "redirect:/member/index";
		} else if(Objects.isNull(vo1) == true) {
			System.out.println("탈퇴된 회원이거나 잘못된 접근");
		
			path = "fail";
		}
		return path;

	}

	// 유저 수정 페이지에 뿌려줄 유저 목록
	public List<MemberVO> memberList() {
		return sqlTemplate.selectList("member.selectMember");
	}

	// 유저 수정 서비스
	public void updateUser(MemberVO vo) {
		sqlTemplate.update("member.adminUserUpdate", vo);
	}

	// 유저 삭제 서비스
	public void deleteUser(MemberVO vo) {
		System.out.println("삭제시 필요한 회원번호 확인:"+vo.getNum());
		sqlTemplate.delete("member.deleteUser", vo);
	}

	// 회원 이름으로 아이디 찾기
	public void selectUserById(MemberVO vo) {
		MemberVO vo2 = sqlTemplate.selectOne("member.selectMemberById", vo);
		vo.setNum(vo2.getNum());
		vo.setEmail(vo2.getEmail());
		vo.setName(vo2.getName());
		vo.setPassword(vo2.getPassword());
		vo.setRole(vo2.getRole());
		vo.setPhone(vo2.getPhone());
		vo.setGender(vo2.getGender());
	}

	public void selectMemberByPw(MemberVO vo) {
		MemberVO vo2 = sqlTemplate.selectOne("member.selectMemberByPw", vo);
		vo.setNum(vo2.getNum());
		vo.setEmail(vo2.getEmail());
		vo.setName(vo2.getName());
		vo.setPassword(vo2.getPassword());
		vo.setRole(vo2.getRole());
		vo.setPhone(vo2.getPhone());
		vo.setGender(vo2.getGender());
	}

}
