<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("utf-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<style>
</style>

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
	href="${pageContext.request.contextPath}/resources/assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/fontawesome.min.css">

<!-- Slick -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/css/slick.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/css/slick-theme.css">
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



















	<!-- Open Content -->
	<section class="bg-light">
		<div class="container pb-5">
			<div class="row">
				<div class="col-lg-5 mt-5">
					<div class="card mb-3">
						<img class="card-img img-fluid"
							src="${pageContext.request.contextPath}/resources/assets/img/expired1.JPG"
							alt="Card image cap" id="product-detail">
					</div>
					<div class="row">
						<!--Start Controls-->
						<div class="col-1 align-self-center">
							<a href="#multi-item-example" role="button" data-bs-slide="prev">
								<i class="text-dark fas fa-chevron-left"></i> <span
								class="sr-only">Previous</span>
							</a>
						</div>
						<!--End Controls-->
						<!--Start Carousel Wrapper-->
						<div id="multi-item-example"
							class="col-10 carousel slide carousel-multi-item"
							data-bs-ride="carousel">
							<!--Start Slides-->
							<div class="carousel-inner product-links-wap" role="listbox">

								<!--First slide-->
								<div class="carousel-item active">
									<div class="row">
										<div class="col-4">
											<a href="#"> <img class="card-img img-fluid"
												src="${pageContext.request.contextPath}/resources/assets/img/expired1.JPG"
												alt="Product Image 1">
											</a>
										</div>
										<div class="col-4">
											<a href="#"> <img class="card-img img-fluid"
												src="${pageContext.request.contextPath}/resources/assets/img/expired2.JPG"
												alt="Product Image 2">
											</a>
										</div>
										<div class="col-4">
											<a href="#"> <img class="card-img img-fluid"
												src="${pageContext.request.contextPath}/resources/assets/img/expired3.JPG"
												alt="Product Image 3">
											</a>
										</div>
									</div>
								</div>
								<!--/.First slide-->

								<!--Second slide-->
								<div class="carousel-item">
									<div class="row">
										<div class="col-4">
											<a href="#"> <img class="card-img img-fluid"
												src="${pageContext.request.contextPath}/resources/assets/img/expired4.JPG"
												alt="Product Image 4">
											</a>
										</div>
										<div class="col-4">
											<a href="#"> <img class="card-img img-fluid"
												src="${pageContext.request.contextPath}/resources/assets/img/expired5.JPG"
												alt="Product Image 5">
											</a>
										</div>
										<div class="col-4">
											<a href="#"> <img class="card-img img-fluid"
												src="${pageContext.request.contextPath}/resources/assets/img/expired6.JPG"
												alt="Product Image 6">
											</a>
										</div>
									</div>
								</div>
								<!--/.Second slide-->

								<!--Third slide-->
								<div class="carousel-item">
									<div class="row">
										<div class="col-4">
											<a href="#"> <img class="card-img img-fluid"
												src="${pageContext.request.contextPath}/resources/assets/img/expired7.JPG"
												alt="Product Image 7">
											</a>
										</div>
										<div class="col-4">
											<a href="#"> <img class="card-img img-fluid"
												src="${pageContext.request.contextPath}/resources/assets/img/expired8.JPG"
												alt="Product Image 8">
											</a>
										</div>
										<div class="col-4">
											<a href="#"> <img class="card-img img-fluid"
												src="${pageContext.request.contextPath}/resources/assets/img/expired9.JPG"
												alt="Product Image 9">
											</a>
										</div>
									</div>
								</div>
								<!--/.Third slide-->
							</div>
							<!--End Slides-->
						</div>
						<!--End Carousel Wrapper-->
						<!--Start Controls-->
						<div class="col-1 align-self-center">
							<a href="#multi-item-example" role="button" data-bs-slide="next">
								<i class="text-dark fas fa-chevron-right"></i> <span
								class="sr-only">Next</span>
							</a>
						</div>
						<!--End Controls-->
					</div>
				</div>
				<!-- col end -->
				<div class="col-lg-7 mt-5">
					<div class="card">




						<!--  <div class="card-body"> -->
						<form:form class="card-body" modelAttribute="productVO">

							<form:hidden path="product_num" />



							<h1 class="h2">${productVO.product_name}</h1>
							<p class="h3 py-2">${productVO.product_price }원</p>
							<p class="py-2">
								<i class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-warning"></i> <i
									class="fa fa-star text-secondary"></i> <span
									class="list-inline-item text-dark">평점 4.8 | 36개의 후기들</span>
							</p>
							<ul class="list-inline">
								<li class="list-inline-item">
									<h6>Brand:</h6>
								</li>
								<li class="list-inline-item">
									<p class="text-muted">
										<strong>FujiFilm</strong>
									</p>
								</li>
							</ul>

							<h6>상품 설명:</h6>
							<p>${productVO.product_desc1 }</p>
							<br>
							<br>
							<br>


							<h6>필름 감도 (Film Sensitivty):</h6>
							<ul class="list-unstyled pb-3">
								<li>${productVO.product_desc2 }</li>

							</ul>
						</form:form>






						<!--       <form action="" method="GET"> -->



						<form:form modelAttribute="cartVO"
							action="${pageContext.request.contextPath }/cart/insert_cart_list">
							<form:hidden path="product_num" value="${productVO.product_num }" />
							<form:hidden path="member_num"
								value="${sessionScope.account.num }" />


							<div class="row">
								<div class="col-auto"></div>
								<div class="col-auto">


									<c:choose>
										<c:when test="${sessionScope.account.email != null }">
											<ul class="list-inline pb-3">
												<li class="list-inline-item text-right">수량</li>

												<li><form:input path="amount" type="number" min="1"
														max="10" /> <input type="submit" id="addtoCart"
													value="장바구니에 담기"></li>
											</ul>
										</c:when>
										<c:otherwise>
											<ul class="list-inline pb-3">
												<li class="list-inline-item text-right">구매/ 장바구니는 로그인을
													해야 합니다.</li>
											</ul>
										</c:otherwise>
									</c:choose>




								</div>
							</div>
							<div class="row pb-3">
								<div class="col d-grid">
									<!--            <button type="submit" class="btn btn-success btn-lg" name="submit" value="buy">구매</button> -->
								</div>
								<div class="col d-grid">
									<%--     <form:button type="submit" class="btn btn-success btn-lg" id="addToCart" >장바구니</form:button> --%>
									<!--    <button type="submit" class="btn btn-success btn-lg" name="submit" value="addtocard">장바구니</button> -->
								</div>
							</div>
							<!--        </form> -->





							<!--                     </div> -->
						</form:form>





					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Close Content -->
	<!-- 여기서부터 제품 상세 설명 -->
	<!-- 
<section id="film_detail">
    <div>
        <h1><b> 상품 설명</b></h1>
        <h4>상품 코드: 1234567</h4><br>
      <hr>

    </div>
    <div>
        <img src="./assets/img/expired_banner.jpg" alt="">
        <h1>익숙한 일상이 특별해진다</h1>
        <h2>후지 컬러필름 C200</h2>
        <p>후지필름 특유의 푸른 색감과
            몽글몽글한 아날로그 필름의 그레인이
            우리의 일상을 아주 특별하게 담아냅니다.
            
            </p>
            <p>
                일본 특유의 청량함이 느껴지는
후지의 대표 컬러 필름을 만나보세요.
            </p>

    </div>




</section> -->


































	<!-- Start Article -->
	<section class="py-5">
		<div class="container">
			<div class="row text-left p-2 pb-3">
				<h4>연관 상품</h4>
			</div>

			<!--Start Carousel Wrapper-->
			<div id="carousel-related-product">

				<div class="p-2 pb-3">
					<div class="product-wap card rounded-0">
						<div class="card rounded-0">
							<img class="card-img rounded-0 img-fluid"
								src="${pageContext.request.contextPath}/resources/assets/img/shop_codak.jpg">
							<div
								class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
								<ul class="list-unstyled">
									<li><a class="btn btn-success text-white"
										href="shop-single.html"><i class="far fa-heart"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="far fa-eye"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="card-body">
							<a href="shop-single.html" class="h3 text-decoration-none">Codak
								film</a>
							<ul
								class="w-100 list-unstyled d-flex justify-content-between mb-0">
								<!-- <li>M/L/X/XL</li> -->
								<!-- <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li> -->
							</ul>
							<ul class="list-unstyled d-flex justify-content-center mb-1">
								<li><i class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-muted fa fa-star"></i></li>
							</ul>
							<p class="text-center mb-0">13,000원</p>
						</div>
					</div>
				</div>

				<div class="p-2 pb-3">
					<div class="product-wap card rounded-0">
						<div class="card rounded-0">
							<img class="card-img rounded-0 img-fluid"
								src="${pageContext.request.contextPath}/resources/assets/img/shop_black.JPG">
							<div
								class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
								<ul class="list-unstyled">
									<li><a class="btn btn-success text-white"
										href="shop-single.html"><i class="far fa-heart"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="far fa-eye"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="card-body">
							<a href="shop-single.html" class="h3 text-decoration-none">B&W
								film</a>
							<ul
								class="w-100 list-unstyled d-flex justify-content-between mb-0">
								<!-- <li>M/L/X/XL</li> -->
								<!-- <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li> -->
							</ul>
							<ul class="list-unstyled d-flex justify-content-center mb-1">
								<li><i class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-muted fa fa-star"></i> <i
									class="text-muted fa fa-star"></i></li>
							</ul>
							<p class="text-center mb-0">13,000원</p>
						</div>
					</div>
				</div>

				<div class="p-2 pb-3">
					<div class="product-wap card rounded-0">
						<div class="card rounded-0">
							<img class="card-img rounded-0 img-fluid"
								src="${pageContext.request.contextPath}/resources/assets/img/shop_expired.jpg">
							<div
								class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
								<ul class="list-unstyled">
									<li><a class="btn btn-success text-white"
										href="shop-single.html"><i class="far fa-heart"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="far fa-eye"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="card-body">
							<a href="shop-single.html" class="h3 text-decoration-none">Expired
								film</a>
							<ul
								class="w-100 list-unstyled d-flex justify-content-between mb-0">
								<!-- <li>M/L/X/XL</li> -->
								<!-- <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li> -->
							</ul>
							<ul class="list-unstyled d-flex justify-content-center mb-1">
								<li><i class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i></li>
							</ul>
							<p class="text-center mb-0">13,000원</p>
						</div>
					</div>
				</div>

				<div class="p-2 pb-3">
					<div class="product-wap card rounded-0">
						<div class="card rounded-0">
							<img class="card-img rounded-0 img-fluid"
								src="${pageContext.request.contextPath}/resources/assets/img/shop_digital.JPG">
							<div
								class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
								<ul class="list-unstyled">
									<li><a class="btn btn-success text-white"
										href="shop-single.html"><i class="far fa-heart"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="far fa-eye"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="card-body">
							<a href="shop-single.html" class="h3 text-decoration-none">디지털
								인화 / 스캔</a>
							<ul
								class="w-100 list-unstyled d-flex justify-content-between mb-0">
								<!-- <li>M/L/X/XL</li> -->
								<!-- <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li> -->
							</ul>
							<ul class="list-unstyled d-flex justify-content-center mb-1">
								<li><i class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-warning fa fa-star"></i> <i
									class="text-muted fa fa-star"></i> <i
									class="text-muted fa fa-star"></i></li>
							</ul>
							<p class="text-center mb-0">13,000원</p>
						</div>
					</div>
				</div>








				<div class="p-2 pb-3">
					<div class="product-wap card rounded-0">
						<div class="card rounded-0">
							<img class="card-img rounded-0 img-fluid"
								src="${pageContext.request.contextPath}/resources/assets/img/relative-Nikon.JPG">
							<div
								class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
								<ul class="list-unstyled">
									<li><a class="btn btn-success text-white"
										href="shop-single.html"><i class="far fa-heart"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="far fa-eye"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="card-body">
							<a href="shop-single.html" class="h3 text-decoration-none">Nikon
								Gallery</a>
							<ul
								class="w-100 list-unstyled d-flex justify-content-between mb-0">
								<!-- <li class="">M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li> -->
							</ul>
							<ul class="list-unstyled d-flex justify-content-center mb-1">
								<li>
									<!-- <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i> -->
									기종: Nikon FM2
								</li>
							</ul>

							<p class="text-center mb-0">완전 기계식 수동 카메라의 전설</p>
						</div>
					</div>
				</div>

				<div class="p-2 pb-3">
					<div class="product-wap card rounded-0">
						<div class="card rounded-0">
							<img class="card-img rounded-0 img-fluid"
								src="${pageContext.request.contextPath}/resources/assets/img/relative-Fuji.JPG">
							<div
								class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
								<ul class="list-unstyled">
									<li><a class="btn btn-success text-white"
										href="shop-single.html"><i class="far fa-heart"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="far fa-eye"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="card-body">
							<a href="shop-single.html" class="h3 text-decoration-none">Fuji
								Film Gallery</a>
							<ul
								class="w-100 list-unstyled d-flex justify-content-between mb-0">
								<!-- <li>M/L/X/XL</li> -->
								<!-- <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li> -->
							</ul>
							<ul class="list-unstyled d-flex justify-content-center mb-1">
								<li>
									<!-- <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i> -->
									기종: Fuji Film Xs-10
								</li>
							</ul>
							<p class="text-center mb-0">80년 필름역사의 산물</p>
						</div>
					</div>
				</div>

				<div class="p-2 pb-3">
					<div class="product-wap card rounded-0">
						<div class="card rounded-0">
							<img class="card-img rounded-0 img-fluid"
								src="${pageContext.request.contextPath}/resources/assets/img/relative-Rollei.JPG">
							<div
								class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
								<ul class="list-unstyled">
									<li><a class="btn btn-success text-white"
										href="shop-single.html"><i class="far fa-heart"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="far fa-eye"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="card-body">
							<a href="shop-single.html" class="h3 text-decoration-none">Rollei</a>
							<ul
								class="w-100 list-unstyled d-flex justify-content-between mb-0">
								<!-- <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li> -->
							</ul>
							<ul class="list-unstyled d-flex justify-content-center mb-1">
								<li>
									<!-- <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i> -->
									기종: Rollei 35 T
								</li>
							</ul>
							<p class="text-center mb-0">여왕이 사랑했던 카메라</p>
						</div>
					</div>
				</div>

				<div class="p-2 pb-3">
					<div class="product-wap card rounded-0">
						<div class="card rounded-0">
							<img class="card-img rounded-0 img-fluid"
								src="${pageContext.request.contextPath}/resources/assets/img/relative-Pentax.JPG">
							<div
								class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
								<ul class="list-unstyled">
									<li><a class="btn btn-success text-white"
										href="shop-single.html"><i class="far fa-heart"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="far fa-eye"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="card-body">
							<a href="shop-single.html" class="h3 text-decoration-none">Pentax</a>
							<ul
								class="w-100 list-unstyled d-flex justify-content-between mb-0">
								<!-- <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li> -->
							</ul>
							<ul class="list-unstyled d-flex justify-content-center mb-1">
								<li>
									<!-- <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i> -->
									기종: Pentax Me Super
								</li>
							</ul>
							<p class="text-center mb-0">일본 광학기술의 집약체</p>
						</div>
					</div>
				</div>

				<div class="p-2 pb-3">
					<div class="product-wap card rounded-0">
						<div class="card rounded-0">
							<img class="card-img rounded-0 img-fluid"
								src="${pageContext.request.contextPath}/resources/assets/img/relative-Polaroid.JPG">
							<div
								class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
								<ul class="list-unstyled">
									<li><a class="btn btn-success text-white"
										href="shop-single.html"><i class="far fa-heart"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="far fa-eye"></i></a></li>
									<li><a class="btn btn-success text-white mt-2"
										href="shop-single.html"><i class="fas fa-cart-plus"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="card-body">
							<a href="shop-single.html" class="h3 text-decoration-none">Polaroid</a>
							<ul
								class="w-100 list-unstyled d-flex justify-content-between mb-0">
								<!-- <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li> -->
							</ul>
							<ul class="list-unstyled d-flex justify-content-center mb-1">
								<li>
									<!-- <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i> -->
									기종: Polaroid One Step2
								</li>
							</ul>
							<p class="text-center mb-0">많은 사랑을 받아온 즉석 카메라</p>
						</div>
					</div>
				</div>







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
										<p>Film Storage는 대한민국 대표 필름 유통사입니다. 카메라 필름 및 디지털 스캔 서비스,
											카메라 작례 갤러리 서비스를 제공합니다. 하단의 SNS 링크에서 더 많은 정보를 만나보세요.</p>
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
											<i class="fa fa-map-marker-alt"></i>123 Street, Incheon,
											Korea
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
											href="about.html">About Us</a> <a href="myinfo.html">My
											Page</a> <a href="cart.html">Cart</a>
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

					<!-- Start Slider Script -->
					<script
						src="${pageContext.request.contextPath}/resources/assets/js/slick.min.js"></script>
					<script>
        $('#carousel-related-product').slick({
            infinite: true,
            arrows: false,
            slidesToShow: 4,
            slidesToScroll: 3,
            dots: true,
            responsive: [{
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                }
            ]
        });
    </script>
					<!-- End Slider Script -->

				</body>
</html>