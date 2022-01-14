package kr.co.goodee39.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodee39.vo.CartVO;

@Service
public class CartService {
	@Autowired
	SqlSessionTemplate sqlTemplate;

	public void insertCartItem(CartVO vo) {
		sqlTemplate.insert("cart.insertCartItem", vo);
	}

	public List<CartVO> cartList(int member_num) {
		System.out.println("service의 member_num:" + member_num);
		return sqlTemplate.selectList("cart.showCartList", member_num);
	}

	public int sumCartItem(int member_num) {
		if (sqlTemplate.selectOne("cart.sumCartItem", member_num) == null) {
			return 0;
		}
		return sqlTemplate.selectOne("cart.sumCartItem", member_num);
	}

//장바구니 삭제
	public void deleteCartItem(int cart_num) {
		sqlTemplate.delete("cart.deleteCartItem", cart_num);
	}

//장바구니 수정
	public void modifyCart(CartVO cvo) {
		sqlTemplate.update("cart.modifyCartItem", cvo);
	}

}
