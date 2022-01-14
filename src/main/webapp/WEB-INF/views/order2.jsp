<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/order_form.css">



<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/templatemo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/fontawesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/footer.css">


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

				</div>
			</div>

		</div>
	</nav>
	<!-- Close Header -->

	<!-- Modal -->
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

















	<div class="row" style="margin-top: 100px;">
		<div class="col-75">
			<div class="container">
				<form action="/action_page.php">

					<div class="row">
						<div class="col-50">
							<h3>주문서</h3>
							<label for="fname"><i class="fa fa-user"></i>주문자 명</label> <input
								type="text" id="fname" name="firstname"
								placeholder="이름을 입력해주세요. \"> <label for="email"><i
								class="fa fa-envelope"></i> 이메일</label> <input type="text" id="email"
								name="email" placeholder="배송알림을 받을 메일을 입력해주세요."> <label
								for="adr"><i class="fa fa-address-card-o"></i> 상세주소</label> <input
								type="text" id="adr" name="address" placeholder="기타주소를 입력해주세요.">
							<label for="city"><i class="fa fa-institution"></i>지역주소</label> <input
								type="text" id="city" name="city"
								placeholder="시, 군, 구 정보를 입력해주세요.">

							<div class="row">
								<div class="col-50">
									<label for="coupon">쿠폰 번호</label> <input type="text"
										id="coupon" name="coupon" placeholder="쿠폰번호를 입력해주세요.">
								</div>
								<!-- <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="10001">
              </div> -->
							</div>
						</div>

						<div class="col-50">
							<h3>결제</h3>
							<label for="fname">결제 가능 카드</label>
							<div class="icon-container">
								<i class="fa fa-cc-visa" style="color: navy;"></i> <i
									class="fa fa-cc-amex" style="color: blue;"></i> <i
									class="fa fa-cc-mastercard" style="color: red;"></i> <i
									class="fa fa-cc-discover" style="color: orange;"></i>
							</div>
							<label for="cname">카드 이름</label> <input type="text" id="cname"
								name="cardname" placeholder="카드에 적힌 성함을 입력해주세요."> <label
								for="ccnum">카드 번호</label> <input type="text" id="ccnum"
								name="cardnumber" placeholder="1111-2222-3333-4444식으로 입력해주세요.">
							<label for="expmonth">만료 달</label> <input type="text"
								id="expmonth" name="expmonth" placeholder="만료 달을 숫자로 입력해주세요.">
							<div class="row">
								<div class="col-50">
									<label for="expyear">만료 연도</label> <input type="text"
										id="expyear" name="expyear" placeholder="만료 연도를 숫자로 입력해주세요.">
								</div>
								<div class="col-50">
									<label for="cvv">CVV</label> <input type="text" id="cvv"
										name="cvv" placeholder="카드 뒷면의 cvv를 입력해주세요.">
								</div>
							</div>
						</div>

					</div>
					<label> <input type="checkbox" checked="checked"
						name="sameadr"> 배송 주소가 결제 페이지의 주소와 일치하는지 확인해주세요.
					</label> <input type="submit" value="결제하기" class="btn"
						style="margin-bottom: 100px;">
				</form>
			</div>
		</div>
		<div class="col-25">
			<div class="container">
				<h4>
					Cart <span class="price" style="color: black"><i
						class="fa fa-shopping-cart"></i> <b>4</b></span>
				</h4>
				<p>
					<a href="#">Fuji film C200</a> <span class="price">13,000원</span>
				</p>
				<p>
					<a href="#">Codat gold</a> <span class="price">13,000원</span>
				</p>
				<p>
					<a href="#">B&W film</a> <span class="price">13,000원</span>
				</p>
				<p>
					<a href="#">Expired film</a> <span class="price">13,000원</span>
				</p>
				<hr>
				<p>
					Total <span class="price" style="color: black"><b>52,000원</b></span>
				</p>
			</div>
		</div>
	</div>
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
<link
	href="${pageContext.request.contextPath}/resources/css/footer-4.css"
	rel="stylesheet">
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
							src="${pageContext.request.contextPath}/resources/assets/img/FooterImg1.JPG"
							alt="Image"></a> <a href="gallery_content.html"><img
							src="${pageContext.request.contextPath}/resources/assets/img/FooterImg2.JPG"
							alt="Image"></a> <a href="gallery_content.html"><img
							src="${pageContext.request.contextPath}/resources/assets/img/FooterImg3.JPG"
							alt="Image"></a> <a href="gallery_content.html"><img
							src="${pageContext.request.contextPath}/resources/assets/img/FooterImg4.JPG"
							alt="Image"></a> <a href="gallery_content.html"><img
							src="${pageContext.request.contextPath}/resources/assets/img/FooterImg5.JPG"
							alt="Image"></a> <a href="gallery_content.html"><img
							src="${pageContext.request.contextPath}/resources/assets/img/FooterImg6.JPG"
							alt="Image"></a>
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



	<!-- Footer End -->

	<!-- Start Script -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.11.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/templatemo.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/custom.js"></script>
	<!-- End Script -->

</body>
</html>
