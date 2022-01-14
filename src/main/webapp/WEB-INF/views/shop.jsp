<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("utf-8"); %>
<html lang="en">


<head>
<title>Zay Shop - Product Listing Page</title>
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
						href="${pageContext.request.contextPath}/cart/cart_list?num=${sessionScope.account.num }"
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
				<%-- 	<li><a href="login" class="ripple"> <!-- <i class="fas fa-cogs fa-lg"></i> -->
						<img
						src="${pageContext.request.contextPath}/resources/assets/img/log_in.png"
						width="30px" height="30px" alt="">


				</a></li> --%>




			</ul>
			<div class="menu-bg"></div>
		</nav>
	</main>





















	<!-- Start Content -->
	<div class="container py-5">
		<div class="row">

			<div class="col-lg-3">
				<h1 class="h2 pb-4">Categories</h1>
				<ul class="list-unstyled templatemo-accordion">
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#"> Film Shop <i
							class="fa fa-fw fa-chevron-circle-down mt-1"></i>
					</a>
						<ul class="collapse show list-unstyled pl-3">

							<c:forEach var="item" items="${list}">
								<li><a class="text-decoration-none"
									href="${pageContext.request.contextPath}/product/${item.product_num}?product_num=${item.product_num}">${item.product_name }</a></li>
							</c:forEach>
							<!--  <li><a class="text-decoration-none" href="shop_codak.html">Codak Film</a></li>
                            <li><a class="text-decoration-none" href="shop_b&w.html">B&W Film</a></li>
                            <li><a class="text-decoration-none" href="shop_expired.html">Expired Film</a></li>
                            <li><a class="text-decoration-none" href="shop_digital.html">Digital Scan</a></li> -->

						</ul></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#"> Camera Brand Gallery <i
							class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
					</a>
						<ul id="collapseTwo" class="collapse list-unstyled pl-3">
							<li><a class="text-decoration-none"
								href="gallery_content.html">Fuji Film</a></li>
							<li><a class="text-decoration-none"
								href="gallery_content.html">Nikon</a></li>
							<li><a class="text-decoration-none"
								href="gallery_content.html">Pentax</a></li>
							<li><a class="text-decoration-none"
								href="gallery_content.html">Rollei</a></li>
							<li><a class="text-decoration-none"
								href="gallery_content.html">Polaroid</a></li>
						</ul></li>
					<!-- <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            Product
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul id="collapseThree" class="collapse list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#">Bag</a></li>
                            <li><a class="text-decoration-none" href="#">Sweather</a></li>
                            <li><a class="text-decoration-none" href="#">Sunglass</a></li>
                        </ul>
                    </li> -->
				</ul>
			</div>

			<div class="col-lg-9">
				<div class="row">
					<div class="col-md-6">
						<ul class="list-inline shop-top-menu pb-3 pt-1">
							<li class="list-inline-item"><a
								class="h3 text-dark text-decoration-none mr-3" href="#">Film</a>
							</li>
							<!-- <li class="list-inline-item">
                                <a class="h3 text-dark text-decoration-none mr-3" href="#">Men's</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="h3 text-dark text-decoration-none" href="#">Women's</a>
                            </li> -->
						</ul>
					</div>
					<div class="col-md-6 pb-4">
						<div class="d-flex">
							<select class="form-control">
								<option>Featured</option>
								<option>A to Z</option>
								<option>Item</option>
							</select>
						</div>
					</div>
				</div>
				<div class="row">





					<c:forEach var="item" items="${list }">
						<div class="col-md-4">
							<div class="card mb-4 product-wap rounded-0">
								<div class="card rounded-0">
									<img class="card-img rounded-0 img-fluid"
										src="${item.product_thumnail }">
									<div
										class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
										<ul class="list-unstyled">
											<li><a class="btn btn-success text-white"
												href="shop-single.html"><i class="far fa-heart"></i></a></li>
											<li><a class="btn btn-success text-white mt-2"
												href="${pageContext.request.contextPath}/product/${item.product_num}?product_num=${item.product_num}"><i
													class="far fa-eye"></i></a></li>
											<li><a class="btn btn-success text-white mt-2"
												href="${pageContext.request.contextPath}/cart/insertCartItemSingle?member_num=${sessionScope.account.num}&product_num=${item.product_num}"><i
													class="fas fa-cart-plus"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="card-body">
									<a
										href="${pageContext.request.contextPath}/product/${item.product_num}?product_num=${item.product_num}"
										class="h3 text-decoration-none">${item.product_name }</a>
									<ul
										class="w-100 list-unstyled d-flex justify-content-between mb-0">

									</ul>
									<ul class="list-unstyled d-flex justify-content-center mb-1">
										<li>
										
										<c:forEach begin="1" end="${item.product_avg }" var="i">
										<i class="text-warning fa fa-star"></i> 
										</c:forEach>
										<c:forEach begin="1"  end="${5 - item.product_avg }" var="i">
										<i class="text-muted fa fa-star"></i>
										</c:forEach> </li>
									</ul>
									<p class="text-center mb-0">${item.product_price }원</p>
								</div>
							</div>
						</div>
					</c:forEach>









					<div div="row">
						<ul class="pagination pagination-lg justify-content-end">
							<li class="page-item disabled"><a
								class="page-link active rounded-0 mr-3 shadow-sm border-top-0 border-left-0"
								href="#" tabindex="-1">1</a></li>
							<li class="page-item"><a
								class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 text-dark"
								href="#">2</a></li>
							<li class="page-item"><a
								class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark"
								href="#">3</a></li>
						</ul>
					</div>
					<!-- foreach문 -->
				</div>

			</div>
		</div>
		<!-- End Content -->

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
								<a class="h1" href="#multi-item-example" role="button"
									data-bs-slide="prev"> <i
									class="text-light fas fa-chevron-left"></i>
								</a>
							</div>
							<!--End Controls-->

							<!--Carousel Wrapper-->
							<div class="col">
								<div class="carousel slide carousel-multi-item pt-2 pt-md-0"
									id="multi-item-example" data-bs-ride="carousel">
									<!--Slides-->
									<div class="carousel-inner product-links-wap" role="listbox">

										<!--First slide-->
										<div class="carousel-item active">
											<div class="row">
												<div class="col-3 p-md-5">
													<a
														href="${pageContext.request.contextPath}/gallery/gal_nikon"><img
														class="img-fluid brand-img"
														src="${pageContext.request.contextPath}/resources/assets/img/Nikon.png"
														alt="Brand Logo"></a>
												</div>
												<div class="col-3 p-md-5">
													<a
														href="${pageContext.request.contextPath}/gallery/gal_pentax"><img
														class="img-fluid brand-img"
														src="${pageContext.request.contextPath}/resources/assets/img/pentax.png"
														alt="Brand Logo"></a>
												</div>
												<div class="col-3 p-md-5">
													<a
														href="${pageContext.request.contextPath}/gallery/gal_fuji"><img
														class="img-fluid brand-img"
														src="${pageContext.request.contextPath}/resources/assets/img/fuji.png"
														alt="Brand Logo"></a>
												</div>
												<div class="col-3 p-md-5">
													<a
														href="${pageContext.request.contextPath}/gallery/gal_polaroid"><img
														class="img-fluid brand-img"
														src="${pageContext.request.contextPath}/resources/assets/img/polaroid.png"
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
														src="assets/img/Rollei.png" alt="Brand Logo"></a>
												</div>
												<!-- <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_02.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_03.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_04.png" alt="Brand Logo"></a>
                                            </div> -->
											</div>
										</div>
										<!--End Second slide-->

										<!--Third slide-->
										<!-- <div class="carousel-item">
                                        <div class="row">
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_01.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_02.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_03.png" alt="Brand Logo"></a>
                                            </div>
                                            <div class="col-3 p-md-5">
                                                <a href="#"><img class="img-fluid brand-img" src="assets/img/brand_04.png" alt="Brand Logo"></a>
                                            </div>
                                        </div>
                                    </div> -->
										<!--End Third slide-->

									</div>
									<!--End Slides-->
								</div>
							</div>
							<!--End Carousel Wrapper-->

							<!--Controls-->
							<div class="col-1 align-self-center">
								<a class="h1" href="#multi-item-example" role="button"
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
								<a href="${pageContext.request.contextPath}/gallery/gal_main"><img
									src="${pageContext.request.contextPath}/resources/assets/img/FooterImg1.JPG"
									alt="Image"></a> <a
									href="${pageContext.request.contextPath}/gallery/gal_main"><img
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
										&copy; <a href="index.html">Film Storage</a>. All Rights
										Reserved
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