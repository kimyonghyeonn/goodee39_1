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

@import url(https://fonts.googleapis.com/css?family=Abel);

@import url(https://fonts.googleapis.com/css?family=Permanent+Marker);

/* BASE */
body {
	background-color: #000;
	color: #fff;
	font-family: sans-serif;
	line-height: 1;
	font-smoothing: antialiased;
}

#app {
	width: 80%;
	margin: 0 auto;
	padding: 5% 0 0;
}

/**
 * ANIMATION - FLIP
 */
.m-flip {
	overflow: hidden;
	cursor: pointer;
}

.m-flip_item {
	font-size: 100px;
	display: block;
	position: relative;
	top: 0;
	transition: top .2s ease-out 0s;
	color: #b7b7b7;
}

.m-flip_item:nth-child(1) {
	color: #b7b7b7;
}

#gal_title {
	width: 100%;
	height: 200px;
	background-color: #111111;
	text-align: center;
	font-size: 80px;
}

@media screen and (min-width: 500px) {
	.m-flip_item {
		font-size: 40px;
	}
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
						href="#"> <i
						class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
					</a> <a class="nav-icon position-relative text-decoration-none"
						href="#"> <i class="fa fa-fw fa-user text-dark mr-3"></i> <span
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











	<div id="gal_title">

		<div id="app">
			<!-- <p class="m-flip js-flip" style="font-size: 150px; font-family:Abel; font-weight: bold;">
            <span class="m-flip_item">일본 광학기술의 집약체</span>
            <span class="m-flip_item">Nikon FM2</span>
        </p> -->
			<!--         
        <p class="m-flip js-flip" style="font-size: 30px; font-family:'Permanent Marker', cursive;">
            <span class="m-flip_item">ABCDEFGHIJKL<br>MNOPQRSTUVWXYZ</span>
            <span class="m-flip_item">あいうえおかきくけこさし<br>すせそたちつてとなにぬねのはひふへほ</span>
        </p> -->

			<p class="m-flip js-flip" style="font-size: 10px;">
				<span class="m-flip_item">시대를 앞서간 기술력</span> <span
					class="m-flip_item">Pentax Me super</span>
			</p>
		</div>
	</div>






























	<section class="photo-grid-container">
		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax1.JPG"
				alt="">

		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax2.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax2.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax3.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax4.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax5.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax6.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax7.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax8.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax9.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax10.jpg"
				alt="" />
			<!-- <video src="./assets/img/gal_video3.MP4" muted autoplay loop style="width: 369px; height: 246px;"></video> -->
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax11.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax12.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax13.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax14.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax15.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax16.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax17.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax18.jpg"
				alt="" />
		</div>

		<div class="photo-grid-item">
			<img
				src="${pageContext.request.contextPath}/resources/assets/img/gallery_pentax/gal_pentax19.jpg"
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
						<a href="">Shop</a> <a href="">Brand Camera Gallery </a> <a
							href="">Contact</a> <a href="">About Us</a> <a href="">My
							Page</a> <a href="">Cart</a>
					</div>
				</div>





				<!--project Image-->


				<div class="col-md-6 col-lg-3">
					<div class="footer-project">
						<h3>Pictures</h3>
						<a href=""><img src="./assets/img/FooterImg1.JPG" alt="Image"></a>
						<a href=""><img src="./assets/img/FooterImg2.JPG" alt="Image"></a>
						<a href=""><img src="./assets/img/FooterImg3.JPG" alt="Image"></a>
						<a href=""><img src="./assets/img/FooterImg4.JPG" alt="Image"></a>
						<a href=""><img src="./assets/img/FooterImg5.JPG" alt="Image"></a>
						<a href=""><img src="./assets/img/FooterImg6.JPG" alt="Image"></a>
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
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/gel_title.js"></script>
	<!-- End Script -->
</body>
</html>
