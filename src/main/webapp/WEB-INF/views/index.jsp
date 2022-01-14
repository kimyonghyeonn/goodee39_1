<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<%
request.setCharacterEncoding("utf-8");
%>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon"
	href="${pageContext.request.contextPath}/resources/assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/templatemo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/ssets/css/custom.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/footer.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/fontawesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/sidebar.css">
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
<style>
/* main{margin-bottom:200%} */
</style>
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
									href="${pageContext.request.contextPath}/member/sign_out">Sign
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
					<!-- <a class="nav-icon position-relative text-decoration-none" href="cart.html">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="myinfo.html">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
                    </a> -->
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
					class="ripple"> <!-- <i class="fas fa-home fa-lg"></i> --> <img
						src="${pageContext.request.contextPath}/resources/assets/img/home.png"
						width="30px" height="30px" alt="">
				</a></li>

				<c:choose>
					<c:when test="${sessionScope.account.email == null }">
						<li><a href="${pageContext.request.contextPath}/member/login"
							class="ripple"> <!-- <i class="far fa-user fa-lg"></i> --> <img
								src="${pageContext.request.contextPath}/resources/assets/img/people.png"
								width="30px" height="30px" alt="">
						</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="mypage" class="ripple"> <!-- <i class="far fa-user fa-lg"></i> -->
								<img
								src="${pageContext.request.contextPath}/resources/assets/img/people.png"
								width="30px" height="30px" alt="">
						</a></li>
					</c:otherwise>
				</c:choose>



				<c:if test="${sessionScope.account.email != null }">
					<li><a
						href="${pageContext.request.contextPath}/cart/cart?member_num=${sessionScope.account.num}"
						class="ripple"> <!-- <i class="far fa-address-card fa-lg"></i> -->
							<img
							src="${pageContext.request.contextPath}/resources/assets/img/cart.png"
							width="30px" height="30px" alt="">
					</a></li>
				</c:if>








				<li><a
					href="${pageContext.request.contextPath}/gallery/gal_main"
					class="ripple"> <!-- <i class="fas fa-cogs fa-lg"></i> --> <img
						src="${pageContext.request.contextPath}/resources/assets/img/gallery.png"
						width="30px" height="25px" alt="">
				</a></li>

				<li><a href="${pageContext.request.contextPath}/faq"
					class="ripple"> <!-- <i class="fas fa-cogs fa-lg"></i> --> <img
						src="${pageContext.request.contextPath}/resources/assets/img/customer.png"
						width="30px" height="30px" alt=""> <!-- <i class="fab fa-blogger-b fa-lg"></i> -->
				</a></li>



				<c:if test="${sessionScope.account.email != null }">
					<li><a href="${pageContext.request.contextPath}/member/logout"
						class="ripple"> <!-- <i class="fas fa-cogs fa-lg"></i> --> <img
							src="${pageContext.request.contextPath}/resources/assets/img/log_in.png"
							width="30px" height="30px" alt="">


					</a></li>
				</c:if>
		




			</ul>
			<div class="menu-bg"></div>
		</nav>
	</main>












	<!-- Start Banner Hero -->

	<!-- 메인 배너 이미지 슬라이드 하단 초록 포인터입니다. -->
	<div id="template-mo-zay-hero-carousel" class="carousel slide"
		data-bs-ride="carousel">
		<ol class="carousel-indicators">
			<li data-bs-target="#template-mo-zay-hero-carousel"
				data-bs-slide-to="0" class="active"></li>
			<li data-bs-target="#template-mo-zay-hero-carousel"
				data-bs-slide-to="1"></li>
			<li data-bs-target="#template-mo-zay-hero-carousel"
				data-bs-slide-to="2"></li>
			<li data-bs-target="#template-mo-zay-hero-carousel"
				data-bs-slide-to="3"></li>
		</ol>


		<!-- 
메인 홈페이지 배너 슬라이드 영역입니다.

         -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="container">
					<div class="row p-5">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid"
								src="${pageContext.request.contextPath}/resources/assets/img/codak_banner.jpg"
								alt="">
						</div>
						<div class="col-lg-6 mb-0 d-flex align-items-center">
							<div class="text-align-left align-self-center">
								<h1 class="h1 text-success">코닥 필름</h1>
								<h3 class="h2">익숙한 일상이 특별해집니다.</h3>
								<p>
									코닥필름 특유의 따듯한 색감과 부드러운 그레인 입자를 담은 필름입니다. 따듯한 일상을 담아보세요. <br>
									<a rel="sponsored" class="text-success"
										href="${pageContext.request.contextPath}/product/main"
										target="_blank">코닥 특유의 따듯함이 느껴지는 대표 컬러 필름을 만나보세요.</a>
									<!-- Image credits go to <a rel="sponsored" class="text-success" href="https://stories.freepik.com/" target="_blank">Freepik Stories</a>, -->
									<!-- <a rel="sponsored" class="text-success" href="https://unsplash.com/" target="_blank">Unsplash</a> and
                                    <a rel="sponsored" class="text-success" href="https://icons8.com/" target="_blank">Icons 8</a>. -->
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container">
					<div class="row p-5">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid"
								src="${pageContext.request.contextPath}/resources/assets/img/fuji_banner.jpg"
								alt="">
						</div>
						<div class="col-lg-6 mb-0 d-flex align-items-center">
							<div class="text-align-left">
								<h1 class="h1">후지 필름</h1>
								<h3 class="h2">익숙한 일상이 특별해집니다.</h3>
								<p>
									후지필름 특유의 푸른 색감과 몽글몽글한 아날로그 필름의 그레인이 우리의 일상을 아주 특별하게 담아냅니다. <br>
									<a rel="sponsored" class="text-success"
										href="${pageContext.request.contextPath}/product/main"
										target="_blank">일본 특유의 청량함이 느껴지는 후지의 대표 컬러 필름을 만나보세요.</a>

								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container">
					<div class="row p-5">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid"
								src="${pageContext.request.contextPath}/resources/assets/img/B&W_banner.jpg"
								alt="">
						</div>
						<div class="col-lg-6 mb-0 d-flex align-items-center">
							<div class="text-align-left">
								<h1 class="h1">흑백 필름</h1>
								<h3 class="h2">흑백으로 만나보는 시간들</h3>
								<p>
									흑백필름 특유의 빛의 대비를 느껴보세요. 일반 흑백필터와는 다른 입자감을 느낄수 있습니다. 앤틱한 일상을
									담아보세요. <br> <a rel="sponsored" class="text-success"
										href="${pageContext.request.contextPath}/product/main"
										target="_blank">흑백 특유의 앤틱함이 느껴지는 흑백필름을 만나보세요.</a>

								</p>
							</div>
						</div>
					</div>
				</div>
			</div>



			<div class="carousel-item">
				<div class="container">
					<div class="row p-5">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid"
								src="${pageContext.request.contextPath}/resources/assets/img/expired_banner.jpg"
								alt="">
						</div>
						<div class="col-lg-6 mb-0 d-flex align-items-center">
							<div class="text-align-left">
								<h1 class="h1">유통기한 지난 필름</h1>
								<h3 class="h2">바래진 시간을 담다.</h3>
								<p>
									유통기한 지난 필름의 바래진 색감을 느껴보세요. 그 어떤 필름과도 다른 느낌이 강한 필름입니다. <br>
									<a rel="sponsored" class="text-success"
										href="${pageContext.request.contextPath}/product/main"
										target="_blank">유통기한 지난 필름 특유의 바래진 색감을 만나보세요.</a>

								</p>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev text-decoration-none w-auto ps-3"
			href="#template-mo-zay-hero-carousel" role="button"
			data-bs-slide="prev"> <i class="fas fa-chevron-left"></i>
		</a> <a class="carousel-control-next text-decoration-none w-auto pe-3"
			href="#template-mo-zay-hero-carousel" role="button"
			data-bs-slide="next"> <i class="fas fa-chevron-right"></i>
		</a>
	</div>
	<!-- End Banner Hero -->


	<!-- Start Categories of The Month -->
	<!-- 메인 슬라이드 배너 밑의 배스트셀러 아이템 영역입니다.  -->
	<section class="container py-5">
		<div class="row text-center pt-3">
			<div class="col-lg-6 m-auto">
				<h1 class="h1">Best Seller</h1>
				<p>사진가들로부터 많은 사랑을 받아온 Film Storage의 베스트 샐러 제품을 만나보세요.</p>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-md-4 p-5 mt-3">
				<a href="${pageContext.request.contextPath}/product/main"><img
					src="${pageContext.request.contextPath}/resources/assets/img/Best1.JPG"
					class="rounded-circle img-fluid border"></a>
				<h5 class="text-center mt-3 mb-3">코닥 필름</h5>
				<p class="text-center">
					<a href="shop_codak" class="btn btn-success">쇼핑하기</a>
				</p>
			</div>
			<div class="col-12 col-md-4 p-5 mt-3">
				<a href="${pageContext.request.contextPath}/product/main"><img
					src="${pageContext.request.contextPath}/resources/assets/img/Best2.jpg"
					class="rounded-circle img-fluid border"></a>
				<h2 class="h5 text-center mt-3 mb-3">후지 필름</h2>
				<p class="text-center">
					<a href="shop_fuji" class="btn btn-success">쇼핑하기</a>
				</p>
			</div>
			<div class="col-12 col-md-4 p-5 mt-3">
				<a href="${pageContext.request.contextPath}/product/main"><img
					src="${pageContext.request.contextPath}/resources/assets/img/Best3.JPG"
					class="rounded-circle img-fluid border"></a>
				<h2 class="h5 text-center mt-3 mb-3">디지털 스캔 / 인화</h2>
				<p class="text-center">
					<a href="shop_digital" class="btn btn-success">문의하기</a>
				</p>
			</div>
		</div>
	</section>
	<!-- End Categories of The Month -->


	<!-- Start Featured Product -->
	<section class="bg-light">
		<div class="container py-5">
			<div class="row text-center py-3">
				<div class="col-lg-6 m-auto">
					<h1 class="h1">Steady Seller</h1>
					<p>꾸준히 사랑을 받아온 Film Storage의 제품들의 후기를 확인하고, 만나보세요.</p>
				</div>
			</div>
			<div class="row">
			
			
			
			
				<div class="col-12 col-md-4 mb-4">
					<div class="card h-100">
						<a href="${pageContext.request.contextPath}/product/main"> <img
							src="${pageContext.request.contextPath}/resources/assets/img/Card3.jpg"
							class="card-img-top" alt="...">
						</a>
						<div class="card-body">
							<ul class="list-unstyled d-flex justify-content-between">
								<li><i class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-muted fa fa-star"></i> <i
									class="text-muted fa fa-star"></i></li>
								<li class="text-muted text-right">13,000원</li>
							</ul>
							<a href="${pageContext.request.contextPath}/product/main"
								class="h2 text-decoration-none text-dark">흑백 필름</a>
							<p class="card-text">빛의 대비를 자연스럽게 담아내는 흑백 필름을 만나보세요.</p>
							<p class="text-muted">Reviews (24)</p>
						</div>
					</div>
				</div>
				
				
				
				
				
				
				<div class="col-12 col-md-4 mb-4">
					<div class="card h-100">
						<a href="${pageContext.request.contextPath}/product/main"> <img
							src="${pageContext.request.contextPath}/resources/assets/img/Card2.jpg"
							class="card-img-top" alt="...">
						</a>
						<div class="card-body">
							<ul class="list-unstyled d-flex justify-content-between">
								<li><i class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-muted fa fa-star"></i> <i
									class="text-muted fa fa-star"></i></li>
								<li class="text-muted text-right">13,000원</li>
							</ul>
							<a href="${pageContext.request.contextPath}/product/main"
								class="h2 text-decoration-none text-dark">유통기한 지난 필름</a>
							<p class="card-text">유통기한 지난 필름이 담아내는 고유한 색감을 만나보세요.</p>
							<p class="text-muted">Reviews (48)</p>
						</div>
					</div>
				</div>
				
				
				
				
				
				
				<div class="col-12 col-md-4 mb-4">
					<div class="card h-100">
						<a href="${pageContext.request.contextPath}/product/main"> <img
							src="${pageContext.request.contextPath}/resources/assets/img/Card1.jpg"
							class="card-img-top" alt="...">
						</a>
						<div class="card-body">
							<ul class="list-unstyled d-flex justify-content-between">
								<li><i class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i></li>
								<li class="text-muted text-right">13,000원</li>
							</ul>
							<a href="shop_fuji" class="h2 text-decoration-none text-dark">후지
								필름</a>
							<p class="card-text">80년 전통을 담아온 후지의 필름 노하우를 느껴보세요.</p>
							<p class="text-muted">Reviews (74)</p>
						</div>
					</div>
				</div>
				
				
				
				
				
				
				
				
			</div>
		</div>
	</section>
	<!-- End Featured Product -->




	<!-- New Footer -->
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
						<a href="${pageContext.request.contextPath}/product/main">Shop</a>
						<a href="${pageContext.request.contextPath}/gallery/gal_main">Brand
							Camera Gallery </a> <a
							href="${pageContext.request.contextPath}/contact">Contact</a> <a
							href="${pageContext.request.contextPath}/about">About Us</a>
						<c:if test="${sessionScope.account.email != null }">
							<a href="myinfo">My Page</a>
							<a href="cart">Cart</a>
						</c:if>
						<!-- <a href="myinfo">My Page</a> 
						<a href="cart">Cart</a> -->
					</div>
				</div>





				<!--project Image-->


				<div class="col-md-6 col-lg-3">
					<div class="footer-project">
						<h3>Pictures</h3>
						<a href="${pageContext.request.contextPath}/gallery/gal_main">
							<img
							src="${pageContext.request.contextPath}/resources/assets/img/FooterImg1.JPG"
							alt="Image">
						</a> <a href="${pageContext.request.contextPath}/gallery/gal_main"><img
							src="${pageContext.request.contextPath}/resources/assets/img/FooterImg2.JPG"
							alt="Image"></a> <a
							href="${pageContext.request.contextPath}/gallery/gal_main"><img
							src="${pageContext.request.contextPath}/resources/assets/img/FooterImg3.JPG"
							alt="Image"></a> <a
							href="${pageContext.request.contextPath}/gallery/gal_main"><img
							src="${pageContext.request.contextPath}/resources/assets/img/FooterImg4.JPG"
							alt="Image"></a> <a
							href="${pageContext.request.contextPath}/gallery/gal_main"><img
							src="${pageContext.request.contextPath}/resources/assets/img/FooterImg5.JPG"
							alt="Image"></a> <a
							href="${pageContext.request.contextPath}/gallery/gal_main"><img
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