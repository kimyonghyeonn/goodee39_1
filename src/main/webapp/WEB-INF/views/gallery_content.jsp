<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("utf-8"); %>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
<title>Responsive Image Gallery</title>
<!-- <link rel="stylesheet" href="styles.css" /> -->
<style>
body {
	background: #111;
}

img {
	width: 100%;
}

.photo-grid-container {
	column-count: 5;
	column-width: 300px;
}

.photo-grid-item {
	margin: 0 auto 15px;
	max-width: 400px;
	width: 100%;
}
</style>
<body style="background-color: #111;">
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
						<li class="nav-item"><a style="color: #59ab6e;"
							class="nav-link" href="index.html">Home</a></li>
						<li class="nav-item"><a style="color: #59ab6e;"
							class="nav-link" href="about.html">About</a></li>
						<li class="nav-item"><a style="color: #59ab6e;"
							class="nav-link" href="shop.html">Shop</a></li>
						<li class="nav-item"><a style="color: #59ab6e;"
							class="nav-link" href="contact.html">Contact</a></li>
						<li class="nav-item"><a style="color: #59ab6e;"
							class="nav-link" href="login.html">Log in</a></li>
						<li class="nav-item"><a style="color: #59ab6e;"
							class="nav-link" href="FAQ.html">FAQ</a></li>
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
					</a> <a class="nav-icon position-relative text-decoration-none"
						href="cart.html"> <i
						class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
					</a> <a class="nav-icon position-relative text-decoration-none"
						href="myinfo.html"> <i class="fa fa-fw fa-user text-dark mr-3"></i>
						<span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
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















































	<section class="photo-grid-container">
		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content_1.JPG"
				alt="">

		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content2.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content3.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content4.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content5.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content6.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content7.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content8.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content9.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content10.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content11.JPG"
				alt="" />
			<!-- <video src="./assets/img/gal_video3.MP4" muted autoplay loop style="width: 369px; height: 246px;"></video> -->
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content12.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content13.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content14.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content15.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content16.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content17.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content18.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content19.JPG"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gal_content20.JPG"
				alt="" />

		</div>
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
