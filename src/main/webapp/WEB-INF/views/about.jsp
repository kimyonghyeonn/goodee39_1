<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("utf-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/sidebar.css">

</head>

<body>
	<!-- Start Top Nav -->
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
				href="${pageContext.request.contextPath}/"> Film Storage </a>

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
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/">Home</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/about">About</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/product/main">Shop</a></li>

						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/contact">Contact</a></li>

						<c:choose>
							<c:when test="${sessionScope.account.email == null }">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/member/login">Log
										in</a></li>
							</c:when>
							<c:otherwise>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/member/logout">Log
										Out</a></li>
							</c:otherwise>
						</c:choose>




						<c:choose>
							<c:when test="${sessionScope.account.email == null }">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/member/sign_in">Sign
										in</a></li>
							</c:when>
							<c:otherwise>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/member/sign_in">Sign
										Out</a></li>
							</c:otherwise>
						</c:choose>

						<c:if test="${sessionScope.account.email != null }">
							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/cart/cart?member_num=${sessionScope.account.num}">Cart
							</a></li>
						</c:if>





						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/bbs/main">Review</a></li>
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





	<main>

		<nav class="floating-menu">
			<ul class="main-menu">
				<li><a href="${pageContext.request.contextPath}/"
					class="ripple"> <img
						src="${pageContext.request.contextPath}/resources/assets/img/home.png"
						width="30px" height="30px" alt="">
				</a></li>

				<c:choose>
					<c:when test="${sessionScope.account.email == null }">
						<li><a href="${pageContext.request.contextPath}/member/login"
							class="ripple"> <img
								src="${pageContext.request.contextPath}/resources/assets/img/people.png"
								width="30px" height="30px" alt="">
						</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="mypage" class="ripple"> <img
								src="${pageContext.request.contextPath}/resources/assets/img/people.png"
								width="30px" height="30px" alt="">
						</a></li>
					</c:otherwise>
				</c:choose>



				<c:if test="${sessionScope.account.email != null }">
					<li><a
						href="${pageContext.request.contextPath}/cart/cart_list?num=${sessionScope.account.num }"
						class="ripple"> <img
							src="${pageContext.request.contextPath}/resources/assets/img/cart.png"
							width="30px" height="30px" alt="">
					</a></li>
				</c:if>








				<li><a
					href="${pageContext.request.contextPath}/gallery/gal_main"
					class="ripple"> <img
						src="${pageContext.request.contextPath}/resources/assets/img/gallery.png"
						width="30px" height="25px" alt="">
				</a></li>

				<li><a href="${pageContext.request.contextPath}/faq"
					class="ripple"> <img
						src="${pageContext.request.contextPath}/resources/assets/img/customer.png"
						width="30px" height="30px" alt="">
				</a></li>



				<c:if test="${sessionScope.account.email != null }">
					<li><a href="${pageContext.request.contextPath}/member/logout"
						class="ripple"> <img
							src="${pageContext.request.contextPath}/resources/assets/img/log_in.png"
							width="30px" height="30px" alt="">


					</a></li>
				</c:if>





			</ul>
			<div class="menu-bg"></div>
		</nav>
	</main>




	<section class="bg-success py-5">
		<div class="container">
			<div class="row align-items-center py-5">
				<div class="col-md-8 text-white">
					<h1>About Us</h1>
					<p>Film Storage는 대한민국 대표 필름 유통사입니다. 카메라 필름 및 디지털 스캔 서비스, 카메라 작례
						갤러리 서비스를 제공합니다. 하단의 SNS 링크에서 더 많은 정보를 만나보세요.</p>
				</div>
				<div class="col-md-4">
					<video
						src="${pageContext.request.contextPath}/resources/assets2/img/background.mp4"
						autoplay muted loop
						style="width: 400px; height: 300px; border-radius: 10%;"></video>
				</div>
			</div>
		</div>
	</section>
	<!-- Close Banner -->

	<!-- Start Section -->
	<section class="container py-5">
		<div class="row text-center pt-5 pb-3">
			<div class="col-lg-6 m-auto">
				<h1 class="h1">Our Services</h1>
				<p>Film Storage는 다양한 고객 서비스를 제공합니다. 로그인을 한 뒤 다양한 서비스를 만나보세요.</p>
			</div>
		</div>
		<div class="row">

			<div class="col-md-6 col-lg-3 pb-5">
				<div class="h-100 py-5 services-icon-wap shadow">
					<div class="h1 text-success text-center">
						<i class="fa fa-truck fa-lg"></i>
					</div>
					<h2 class="h5 mt-4 text-center">배송 서비스</h2>
				</div>
			</div>

			<div class="col-md-6 col-lg-3 pb-5">
				<div class="h-100 py-5 services-icon-wap shadow">
					<div class="h1 text-success text-center">
						<i class="fas fa-exchange-alt"></i>
					</div>
					<h2 class="h5 mt-4 text-center">주문 조회 / 교환 환불</h2>
				</div>
			</div>

			<div class="col-md-6 col-lg-3 pb-5">
				<div class="h-100 py-5 services-icon-wap shadow">
					<div class="h1 text-success text-center">
						<i class="fa fa-percent"></i>
					</div>
					<h2 class="h5 mt-4 text-center">행사</h2>

				</div>
			</div>

			<div class="col-md-6 col-lg-3 pb-5">
				<div class="h-100 py-5 services-icon-wap shadow">
					<div class="h1 text-success text-center">
						<i class="fa fa-user"></i>
					</div>
					<h2 class="h5 mt-4 text-center">QnA 서비스</h2>
				</div>
			</div>
		</div>
	</section>
	<!-- End Section -->

	<!-- Start Brands -->
	<section class="bg-light py-5">
		<div class="container my-4">
			<div class="row text-center py-3">
				<div class="col-lg-6 m-auto">
					<h1 class="h1">Camera Brands</h1>
					<p>다양한 카메라브랜드의 소개, 작례를 만나보세요.</p>
				</div>
				<div class="col-lg-9 m-auto tempaltemo-carousel">
					<div class="row d-flex flex-row">
						<!--Controls-->
						<div class="col-1 align-self-center">
							<a class="h1" href="#templatemo-slide-brand" role="button"
								data-bs-slide="prev"> <i
								class="text-light fas fa-chevron-left"></i>
							</a>
						</div>
						<!--End Controls-->

						<!--Carousel Wrapper-->
						<div class="col">
							<div class="carousel slide carousel-multi-item pt-2 pt-md-0"
								id="templatemo-slide-brand" data-bs-ride="carousel">
								<!--Slides-->
								<div class="carousel-inner product-links-wap" role="listbox">

									<!--First slide-->
									<div class="carousel-item active">
										<div class="row">
											<div class="col-3 p-md-5">
												<a href="gallery_content.html"><img
													class="img-fluid brand-img"
													src="${pageContext.request.contextPath}/resources/assets/img/Nikon.png"
													alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="gallery_content.html"><img
													class="img-fluid brand-img"
													src="${pageContext.request.contextPath}/resources/assets/img/fuji.png"
													alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="gallery_content.html"><img
													class="img-fluid brand-img"
													src="${pageContext.request.contextPath}/resources/assets/img/pentax.png"
													alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="gallery_content.html"><img
													class="img-fluid brand-img"
													src="${pageContext.request.contextPath}/resources/assets/img/polaroi.png"
													alt="Brand Logo"></a>
											</div>
										</div>
									</div>
									<!--End First slide-->

									<!--Second slide-->
									<div class="carousel-item">
										<div class="row">
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="${pageContext.request.contextPath}/resources/assets/img/Rollei.png"
													alt="Brand Logo"></a>
											</div>

										</div>
									</div>
									<!--End Second slide-->



								</div>

							</div>
						</div>
						<!--End Carousel Wrapper-->

						<!--Controls-->
						<div class="col-1 align-self-center">
							<a class="h1" href="#templatemo-slide-brand" role="button"
								data-bs-slide="next"> <i
								class="text-light fas fa-chevron-right"></i>
							</a>
						</div>
						<!--End Controls-->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--End Brands-->
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
	<!-- End Footer -->

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