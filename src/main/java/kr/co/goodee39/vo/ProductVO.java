package kr.co.goodee39.vo;

public class ProductVO {
	private int product_num;
	private String product_name;
	private int product_price;
	private String product_desc1;
	private String product_desc2;
	private String product_thumnail;
	private int product_avg;

	public int getProduct_avg() {
		return product_avg;
	}

	public void setProduct_avg(int product_avg) {
		this.product_avg = product_avg;
	}

	public String getProduct_name() {
		return product_name;
	}

	public String getProduct_thumnail() {
		return product_thumnail;
	}

	public void setProduct_thumnail(String product_thumnail) {
		this.product_thumnail = product_thumnail;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getProduct_num() {
		return product_num;
	}

	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public String getProduct_desc1() {
		return product_desc1;
	}

	public void setProduct_desc1(String product_desc1) {
		this.product_desc1 = product_desc1;
	}

	public String getProduct_desc2() {
		return product_desc2;
	}

	public void setProduct_desc2(String product_desc2) {
		this.product_desc2 = product_desc2;
	}

}
