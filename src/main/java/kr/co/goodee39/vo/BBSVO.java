package kr.co.goodee39.vo;

/*import java.sql.Date;*/

public class BBSVO {
	private int num;
	private int productscore;
	private int deleveryscore;
	private int reviewscore;
	private String title;
	private String content;
	private String owneremail;
	private String ownername;
	/* private Date createdate; */
	private String createdate;
	private String isdelete;
	private int count;
	private int start;
	private int category;

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public BBSVO() {
		this.start = 0;
		this.count = 10;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public String getIsdelete() {
		return isdelete;
	}

	public void setIsdelete(String isdelete) {
		this.isdelete = isdelete;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getProductscore() {
		return productscore;
	}

	public void setProductscore(int productscore) {
		this.productscore = productscore;
	}

	public int getDeleveryscore() {
		return deleveryscore;
	}

	public void setDeleveryscore(int deleveryscore) {
		this.deleveryscore = deleveryscore;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getOwneremail() {
		return owneremail;
	}

	public void setOwneremail(String owneremail) {
		this.owneremail = owneremail;
	}

	public String getOwnername() {
		return ownername;
	}

	public void setOwnername(String ownername) {
		this.ownername = ownername;
	}

	public String getCreatedate() {
		return createdate;
	}

	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}

	public int getReviewscore() {
		return reviewscore;
	}

	public void setReviewscore(int reviewscore) {
		this.reviewscore = reviewscore;
	}

}
