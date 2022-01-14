package kr.co.goodee39.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.goodee39.vo.ProductVO;

@Service
public class ProductService {
	@Autowired
	SqlSessionTemplate sqlTemplate;

	public void showCartItem(ProductVO vo) {
		ProductVO vo2 = sqlTemplate.selectOne("product.showProductItem", vo);
		vo.setProduct_num(vo2.getProduct_num());
		vo.setProduct_name(vo2.getProduct_name());
		vo.setProduct_price(vo2.getProduct_price());
		vo.setProduct_desc1(vo2.getProduct_desc1());
		vo.setProduct_desc2(vo2.getProduct_desc2());
	}

	public List<ProductVO> showCartItemList() {
		return sqlTemplate.selectList("product.showProductItemList");
	}

	public void deleteCartItem(int product_num) {
		sqlTemplate.delete("product.deleteProductItem", product_num);
	}
	
	/*
	 * public List<ProductVO> showProductAvg(){ return
	 * sqlTemplate.selectList("product.showProductAvg"); }
	 */

}
