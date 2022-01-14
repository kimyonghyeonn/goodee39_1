<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("utf-8"); %>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">
<link rel="stylesheet" href="./assets/css/footer.css">
<title>CSS Flexbox - Registration Form Design</title>
<link rel="stylesheet" href="./assets/css/regst_style.css">

<link rel="stylesheet" href="./assets/css/sidebar.css">
</head>

<body>


	<nav
		class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block"
		id="templatemo_nav_top">
		<div class="container text-light">
			<div class="w-100 d-flex justify-content-between">
				<div>
					<i class="fa fa-envelope mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="mailto:info@company.com">filmstorage@naver.com</a> <i
						class="fa fa-phone mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="tel:010-020-0340">010-4948-9140</a>
				</div>
				<div>
					<a class="text-light" href="https://fb.com/templatemo"
						target="_blank" rel="sponsored"><i
						class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a> <a
						class="text-light" href="https://www.instagram.com/"
						target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
					<a class="text-light" href="https://twitter.com/" target="_blank"><i
						class="fab fa-twitter fa-sm fa-fw me-2"></i></a> <a class="text-light"
						href="https://www.linkedin.com/" target="_blank"><i
						class="fab fa-linkedin fa-sm fa-fw"></i></a>
				</div>
			</div>
		</div>
	</nav>

	<!-- Close Top Nav -->


	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light shadow">
		<div
			class="container d-flex justify-content-between align-items-center">

			<a class="navbar-brand text-success logo h1 align-self-center"
				href="index.html"> Film Storage </a>

			<button class="navbar-toggler border-0" type="button"
				data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div
				class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
				id="templatemo_main_nav">
				<div class="flex-fill">
					<ul
						class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
						<li class="nav-item"><a class="nav-link" href="index.html">Home</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="about.html">About</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="shop.html">Shop</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
						</li>
						<!-- <li class="nav-item">
                            <a class="nav-link" href="login.html">Log in</a>
                        </li> -->
						<li class="nav-item"><a class="nav-link" href="sign_in.html">Sign
								in</a></li>
						<!-- <li class="nav-item">
                            <a class="nav-link" href="FAQ.html">FAQ</a>
                        </li> -->
						<li class="nav-item"><a class="nav-link" href="review.html">Review</a>
						</li>
					</ul>
				</div>
				<div class="navbar align-self-center d-flex">
					<div
						class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
						<div class="input-group">
							<input type="text" class="form-control" id="inputMobileSearch"
								placeholder="Search ...">
							<div class="input-group-text">
								<i class="fa fa-fw fa-search"></i>
							</div>
						</div>
					</div>
					<a class="nav-icon d-none d-lg-inline" href="#"
						data-bs-toggle="modal" data-bs-target="#templatemo_search"> <i
						class="fa fa-fw fa-search text-dark mr-2"></i>
					</a>
					<!-- <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
                    </a> -->
				</div>
			</div>

		</div>
	</nav>

	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="" method="get"
				class="modal-content modal-body border-0 p-0">
				<div class="input-group mb-2">
					<input type="text" class="form-control" id="inputModalSearch"
						name="q" placeholder="Search ...">
					<button type="submit"
						class="input-group-text bg-success text-light">
						<i class="fa fa-fw fa-search text-white"></i>
					</button>
				</div>
			</form>
		</div>
	</div>







	<main>

		<nav class="floating-menu">
			<ul class="main-menu">
				<li><a href="index.html" class="ripple"> <!-- <i class="fas fa-home fa-lg"></i> -->
						<img src="./assets/img/home.png" width="30px" height="30px" alt="">
				</a></li>
				<li><a href="myinfo.html" class="ripple"> <!-- <i class="far fa-user fa-lg"></i> -->
						<img src="./assets/img/people.png" width="30px" height="30px"
						alt="">
				</a></li>
				<li><a href="cart.html" class="ripple"> <!-- <i class="far fa-address-card fa-lg"></i> -->
						<img src="./assets/img/cart.png" width="30px" height="30px" alt="">
				</a></li>
				<li><a href="gallery_main.html" class="ripple"> <!-- <i class="fas fa-cogs fa-lg"></i> -->
						<img src="./assets/img/gallery.png" width="30px" height="25px"
						alt="">
				</a></li>
				<li><a href="FAQ.html" class="ripple"> <!-- <i class="fas fa-cogs fa-lg"></i> -->
						<img src="./assets/img/customer.png" width="30px" height="30px"
						alt=""> <!-- <i class="fab fa-blogger-b fa-lg"></i> -->
				</a></li>
			</ul>
			<div class="menu-bg"></div>
		</nav>
	</main>




















	<section id="registration-page">

		<form:form class="signup-form" modelAttribute="userVO" method="post"
			action="success">
			<!-- FORM HEADER -->
			<div class="form-header">
				<h1>회원가입</h1>
			</div>
			<!-- FORM BODY -->
			<div class="form-body">
				<!-- First name & Last name -->
				<div class="row">
					<div class="input-group">
						<label> <b>성 </b></label>

						<form:input path="FirstName" />
						<form:errors path="FirstName"></form:errors>



					</div>
					<div class="input-group">
						<label>이름</label>

						<form:input path="LastName" />
						<form:errors path="LastName"></form:errors>

					</div>
				</div>
				<!-- Email -->
				<div class="row">
					<div class="input-group">
						<label>이메일(ID) </label> <input type="email"
							placeholder="ID가 될 이메일을 입력해주세요.">
					</div>
				</div>
				<div class="row">
					<div class="input-group">
						<label>비밀번호 </label> <input type="password"
							placeholder="Enter your your password">
					</div>
					<div class="input-group">
						<label>비밀번호 확인</label> <input type="password"
							placeholder="Enter your password again">
					</div>

				</div>

				<div class="row">
					<div class="input-group">
						<label>기본 주소 </label> <input type="text"
							placeholder="국가/시/군/구 를 입력해주세요.">
					</div>

				</div>
				<div class="row">


					<div class="input-group">
						<label>나머지 주소 </label> <input type="text"
							placeholder="시/군/구를 제외한 나머지 주소를 입력해주세요.">
					</div>
				</div>

				<!-- Gender & Hobbies -->
				<div class="row">
					<div class="input-group">
						<label>성별 </label>

						<div class="radio-group">

							<div>
								<label for="male"> <input type="radio" name="gender"
									id="male"> 남성
								</label>
							</div>

							<div>
								<label for="female"> <input type="radio" name="gender"
									id="female"> 여성
								</label>
							</div>

							<!-- <div>
                                <label for="other">
                                    <input type="radio" name="gender" id="other"> Other
                                </label>
                            </div> -->

						</div>
					</div>
					<div class="input-group">
						<label>직업</label>
						<div class="checkbox-group">
							<div>
								<label for="job_A"> <input type="checkbox" name="job_A"
									id="job_A"> 직장인
								</label>
							</div>

							<div>
								<label for="job_B"> <input type="checkbox" name="job_B"
									id="job_B"> 사진가
								</label>
							</div>

							<div>
								<label for="job_C"> <input type="checkbox" name="job_C"
									id="job_C"> 학생
								</label>
							</div>

							<div>
								<label for="job_D"> <input type="checkbox" name="job_D"
									id="job_D"> 기타
								</label>
							</div>

						</div>
					</div>
				</div>
				<!-- Source of Income & Income -->
				<div class="row">
					<!-- <div class="input-group">
                        <label for="">Source of Income</label>
                        <select name="" id="">
                            <option>Employed</option>
                            <option>Self-Employed</option>
                            <option>Unemployed</option>
                        </select>
                    </div> -->
					<!-- <div class="input-group">
                        <label>Income</label>
                        <div class="range-group">
                            <input type="range" onChange="changeSliderValue(this.value)" min="20" max="200" step="5"
                                value="20">
                            <label id="rangeSliderLabel">20 K</label>
                        </div>
                    </div> -->

					<div style="display: flex;">
						<label>휴대전화</label> <select name="" id="phone_num">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="018">018</option>
							<option value="070">070</option>
						</select> - <input id="phone_num" type="number"> - <input
							id="phone_num" type="number">
					</div>


				</div>

				<div class="row">
					<div style="display: flex;">
						<label>일반전화</label> <select name="" id="phone_num">
							<optgroup label="서울">
								<option value="seoul">02</option>
							</optgroup>
							<optgroup label="인천">
								<option value="incheon">032</option>
							</optgroup>
							<optgroup label="경가">
								<option value="kyungki">031</option>
							</optgroup>
							<optgroup label="강원">
								<option value="gang_won">033</option>
							</optgroup>
							<optgroup label="충북">
								<option value="chung_buk">043</option>
							</optgroup>
							<optgroup label="세종">
								<option value="sejong">044</option>
							</optgroup>
							<optgroup label="충남">
								<option value="chung_nam">041</option>
							</optgroup>
							<optgroup label="대전">
								<option value="dae_jeon">042</option>
							</optgroup>
							<optgroup label="경북">
								<option value="kyoung_buk">054</option>
							</optgroup>
							<optgroup label="대구">
								<option value="daegu">053</option>
							</optgroup>
							<optgroup label="울산">
								<option value="ulsan">052</option>
							</optgroup>
							<optgroup label="부산">
								<option value="busan">051</option>
							</optgroup>
							<optgroup label="경남">
								<option value="kyoung_nam">055</option>
							</optgroup>
							<optgroup label="전북">
								<option value="jeon_buk">063</option>
							</optgroup>
							<optgroup label="광주">
								<option value="gwang_ju">062</option>
							</optgroup>
							<optgroup label="전남">
								<option value="jeon_nam">061</option>
							</optgroup>
							<optgroup label="제주">
								<option value="jeju">064</option>
							</optgroup>

						</select> - <input id="phone_num" type="number"> - <input
							id="phone_num" type="number">
					</div>

				</div>

				<!-- <div class="row">
                <label>생년월일</label>
                <select  name="birth_year" id="birth_year">
                    <option value="">2001</option>
                    <option value="">2002</option>
                    <option value="">2003</option>
                    <option value="">2004</option>
                    <option value="">2005</option>
                    <option value="">2006</option>
                    <option value="">2007</option>
                    <option value="">2008</option>
                    <option value="">2009</option>
                    <option value="">2010</option>

                </select>
                년

              <select name="birth_month" id="birth_month">
           <option value="">1</option>
           <option value="">2</option>
           <option value="">3</option>
           <option value="">4</option>
           <option value="">5</option>
           <option value="">6</option>
           <option value="">7</option>
           <option value="">8</option>
           <option value="">9</option>
           <option value="">10</option>
           <option value="">11</option>
           <option value="">12</option>
              </select>
              월

              <select name="birth_day" id="birth_day">
             <option value="">1</option>
             <option value="">2</option>
             <option value="">3</option>
             <option value="">4</option>
             <option value="">5</option>
             <option value="">6</option>
             <option value="">7</option>
             <option value="">8</option>
             <option value="">9</option>
             <option value="">10</option>
             <option value="">11</option>
             <option value="">12</option>
             <option value="">13</option>
             <option value="">14</option>
             <option value="">15</option>
             <option value="">16</option>
             <option value="">17</option>
             <option value="">18</option>
             <option value="">19</option>
             <option value="">20</option>
             <option value="">21</option>
             <option value="">22</option>
             <option value="">23</option>
             <option value="">24</option>
             <option value="">25</option>
             <option value="">26</option>
             <option value="">27</option>
             <option value="">28</option>
             <option value="">29</option>
             <option value="">30</option>
             <option value="">31</option>

              </select>
                일
             
                </div> -->



				<div style="display: flex; margin-top: 20px;">
					<label>생년월일</label> <select name="" id="phone_num"
						style="width: 95px;">
						<option value="1">2001</option>
						<option value="2">2002</option>
						<option value="3">2003</option>
						<option value="4">2004</option>
						<option value="5">2005</option>
						<option value="6">2006</option>
						<option value="7">2007</option>
						<option value="8">2008</option>
						<option value="9">2009</option>
						<option value="10">2010</option>
						<option value="11">2011</option>
						<option value="12">2012</option>
						<option value="13">2013</option>
						<option value="14">2014</option>
						<option value="15">2015</option>
						<option value="16">2016</option>
						<option value="17">2017</option>
						<option value="18">2018</option>
						<option value="19">2019</option>
						<option value="20">2020</option>
					</select> 년 <select name="" id="phone_num" style="width: 88px;">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> 월 <select name="" id="phone_num" style="width: 80px;">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>
					</select> 일
				</div>








				<div class="row">
					<label for="">*생일을 입력하면 고객님의 생일에 선물을 드립니다.</label>
				</div>
				<!-- Upload Profile Picure & Age -->
				<label for="">SMS 수신여부*</label>
				<div class="row">
					<!-- <div class="input-group">
                        <label>Upload Profile Picture</label>
                        <input type="file">
                    </div>
                    <div class="input-group">
                        <label>Age</label>
                        <input type="number">
                    </div> -->


					<input id="new_check" type="checkbox">

				</div>
				<div class="row">
					<label style="margin: 0 auto;" for="">동의함</label>

				</div>
				<label for="">SMS 수신 선택시 각종 이벤트 및 할인 쿠폰 소식을 받아보실 수 있습니다.</label>

				<!--  Bio   -->
				<!-- <div class="row">
                    <div class="input-group">
                        <label for="">Bio</label>
                        <textarea> </textarea>
                    </div>
                </div> -->
			</div>
			<!--  FORM FOOTER   -->
			<div class="form-footer">

				<form:button class="btn">Create</form:button>
			</div>
		</form:form>

	</section>
<head>
<meta charset="utf-8">
<title>Bootstrap Footer Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<!-- Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Stylesheet -->
<link href="css/footer-4.css" rel="stylesheet">
</head>

<body>
	<!-- Footer Start -->
	<div class="footer">
		<div class="container">
			<div class="row">

				<!--Footer About-->
				<div class="col-md-6 col-lg-3">
					<div class="footer-about">
						<h3>About Us</h3>
						<p>Film Storage는 대한민국 대표 필름 유통사입니다. 카메라 필름 및 디지털 스캔 서비스, 카메라
							작례 갤러리 서비스를 제공합니다. 하단의 SNS 링크에서 더 많은 정보를 만나보세요.</p>
						<div class="footer-social">
							<a href=""><i class="fab fa-twitter"></i></a> <a href=""><i
								class="fab fa-facebook-f"></i></a> <a href=""><i
								class="fab fa-youtube"></i></a> <a href=""><i
								class="fab fa-instagram"></i></a> <a href=""><i
								class="fab fa-linkedin-in"></i></a>
						</div>
					</div>
				</div>



				<!--Contact Us-->
				<div class="col-md-6 col-lg-3">
					<div class="footer-contact">
						<h3>Get In Touch</h3>
						<p>
							<i class="fa fa-map-marker-alt"></i>123 Street, Incheon, Korea
						</p>
						<p>
							<i class="fa fa-phone-alt"></i>010 4948 9140
						</p>
						<p>
							<i class="fa fa-envelope"></i>filmstorage@naver.com
						</p>
						<p>
							<i class="far fa-clock"></i>Mon - Fri, 9AM - 10PM
						</p>
					</div>
				</div>







				<!--Footer Link-->
				<div class="col-md-6 col-lg-3">
					<div class="footer-links">
						<h3>Navigator</h3>
						<a href="shop.html">Shop</a> <a href="gallery_main.html">Brand
							Camera Gallery </a> <a href="contact.html">Contact</a> <a
							href="about.html">About Us</a> <a href="myinfo.html">My Page</a>
						<a href="cart.html">Cart</a>
					</div>
				</div>





				<!--project Image-->


				<div class="col-md-6 col-lg-3">
					<div class="footer-project">
						<h3>Pictures</h3>
						<a href="gallery_content.html"><img
							src="./assets/img/FooterImg1.JPG" alt="Image"></a> <a
							href="gallery_content.html"><img
							src="./assets/img/FooterImg2.JPG" alt="Image"></a> <a
							href="gallery_content.html"><img
							src="./assets/img/FooterImg3.JPG" alt="Image"></a> <a
							href="gallery_content.html"><img
							src="./assets/img/FooterImg4.JPG" alt="Image"></a> <a
							href="gallery_content.html"><img
							src="./assets/img/FooterImg5.JPG" alt="Image"></a> <a
							href="gallery_content.html"><img
							src="./assets/img/FooterImg6.JPG" alt="Image"></a>
					</div>
				</div>

			</div>
		</div>

		<!-- Newswletter -->



		<div class="container footer-newsletter">
			<p>기타 문의는 성함과 이메일주소를 남겨주세요. 최대한 빨리 답장을 드리겠습니다. 감사합니다.</p>
			<div class="row form">
				<div class="col-sm-4">
					<input class="form-control" placeholder="Your Name">
				</div>
				<div class="col-sm-4">
					<input class="form-control" placeholder="Your Email">
				</div>
				<div class="col-sm-4">
					<button class="btn">Send</button>
				</div>
			</div>
		</div>

		<div class="copyright">
			<div class="container">
				<div class="row align-items-center">

					<!--Copy Right-->

					<div class="col-md-6">
						<div class="copy-text">
							<p>
								&copy; <a href="#">Film Storage</a>. All Rights Reserved
							</p>
						</div>
					</div>

					<!--Footer Menu-->
					<div class="col-md-6">
						<div class="copy-menu">
							<a href="">About</a> <a href="">Terms</a> <a href="">Privacy</a>
							<a href="">Contact</a>
						</div>
					</div>



				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->












	<!-- <script>
        const changeSliderValue = (value) => {
            document.getElementById("rangeSliderLabel").innerText = value + " K";
        }
    </script> -->
	<script src="assets/js/jquery-1.11.0.min.js"></script>
	<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/templatemo.js"></script>
	<script src="assets/js/custom.js"></script>

</body>

</html>