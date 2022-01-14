

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("utf-8"); %>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">
<style>
td>img {
	width: 200px;
}
</style>

<!-- title -->
<title>Cart</title>

<!-- favicon -->
<link rel="shortcut icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/assets/img/favicon.png">
<!-- google font -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap"
	rel="stylesheet">
<!-- fontawesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/all.min.css">
<!-- bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/bootstrap/css/bootstrap.min.css">
<!-- owl carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/owl.carousel.css">
<!-- magnific popup -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/magnific-popup.css">
<!-- animate css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/animate.css">
<!-- mean menu css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/meanmenu.min.css">
<!-- main style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/main.css">
<!-- responsive -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets2/css/responsive.css">

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
<!--





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
				<ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
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







					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/bbs/main">Review</a></li>
				</ul>
			</div>
			<div class="navbar align-self-center d-flex">
				<div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
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
				<button type="submit" class="input-group-text bg-success text-light">
					<i class="fa fa-fw fa-search text-white"></i>
				</button>
			</div>
		</form>
	</div>
</div>
<!-- Close Header -->












<main>

	<nav class="floating-menu">
		<ul class="main-menu">
			<li><a href="${pageContext.request.contextPath}/" class="ripple">
					<img
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







<!-- cart -->

<c:choose>
	<c:when test="${map.count == 0 }">
		<h1>장바구니가 비어있습니다.</h1>
		<table class="cart-table">
			<thead class="cart-table-head">
				<tr class="table-head-row">

					<th class="product-name">제품 이름</th>
					<th class="product-price">가격</th>
					<th class="product-quantity">수량</th>
					<th class="product-total">총액</th>
				</tr>
			</thead>
			<tbody>

				<td class="product-name">비어있음</td>
				<td class="product-price">비어있음</td>
				<td class="product-quantity">비어있음</td>
				<td class="product-total">비어있음</td>
			</tbody>
		</table>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />



		<div class="col-lg-4">
			<div class="total-section">
				<table class="total-table">
					<thead class="total-table-head">

						<tr class="table-total-row">
							<th>합계</th>
							<th>가격</th>
						</tr>
					</thead>
					<tbody>

						<tr class="total-data">
							<td><strong>총 가격: </strong></td>
							<td>비어있음</td>
						</tr>
						<tr class="total-data">
							<td><strong>배송비: </strong></td>
							<td>비어있음</td>
						</tr>
						<tr class="total-data">
							<td><strong>할인: </strong></td>
							<td>0원</td>
						</tr>
						<tr class="total-data">
							<td><strong>합계: </strong></td>
							<td>비어있음</td>
						</tr>

					</tbody>
				</table>

			</div>


		</div>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
	</c:when>




	<c:otherwise>
		<form:form modelAttribute="cartVO" class="cart-section mt-150 mb-150"
			action="${pageContext.request.contextPath}/cart/updateCartItem">
		<%-- 	<form:hidden path="member_num" /> --%>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-md-12">
						<div class="cart-table-wrap">



							<table class="cart-table">
								<thead class="cart-table-head">
									<tr class="table-head-row">
										<th class="product-remove"></th>
										<th class="product-name">제품 이름</th>
										<th class="product-price">가격</th>
										<th class="product-quantity">수량</th>
										<th class="product-total">총액</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="row" items="${map.list}">
										<c:set var="total" value="${map.sumMoney }"></c:set>
										<tr id="cancel-item" class="table-body-row">
											<td class="product-remove"><a
												href="${pageContext.request.contextPath}/cart/deleteCartItem?cart_num=${row.cart_num}&member_num=${sessionScope.account.num }">
													<i onclick="deleteTd()" class="far fa-window-close"></i>
											</a></td>
											<td class="product-name">${row.product_name}</td>
											<td class="product-price">${row.product_price }원</td>
											<td class="product-quantity"><form:input path="amount"
													type="number" min="1" max="10" value="${row.amount}" /> 개
												<form:hidden path="product_num" value="${row.product_num }" />
												<form:hidden path="cart_num" value="${row.cart_num }" /></td>
											<td class="product-total">${row.money }원</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>






						</div>
					</div>

					<div class="col-lg-4">
						<div class="total-section">
							<table class="total-table">
								<thead class="total-table-head">

									<tr class="table-total-row">
										<th>합계</th>
										<th>가격</th>
									</tr>
								</thead>
								<tbody>

									<tr class="total-data">
										<td><strong>총 가격: </strong></td>
										<td>${total }원</td>
									</tr>
									<tr class="total-data">
										<td><strong>배송비: </strong></td>
										<td>${map.fee }원</td>
									</tr>
									<tr class="total-data">
										<td><strong>할인: </strong></td>
										<td>0원</td>
									</tr>
									<tr class="total-data">
										<td><strong>합계: </strong></td>
										<td>${map.allSum }원</td>
									</tr>

								</tbody>
							</table>
							<div class="cart-buttons">
								<form:button class="boxed-btn" type="submit">수정하기</form:button>
								<input type="hidden" name="count" value="${map.count }">
								<!-- 	<a href="cart.html" class="boxed-btn">장바구니 업데이트</a> -->
							<!-- 	<a href="checkout.html" class="boxed-btn black">취소</a> -->
							</div>
						</div>

						<div class="coupon-section">
							<h3>쿠폰 적용</h3>
							<div class="coupon-form-wrap">
								<form action="index.html">
									<p>
										<input type="text" placeholder="쿠폰번호 입력">
									</p>
									<p>
										<input type="submit" value="등록">
									</p>
									<p>
										<input type="submit" value="결제하기">
									</p>

								</form>
							</div>
						</div>
					</div>
					<p>
						<input type="submit" style="margin-left: 50%; margin-top: 10%;"
							value="장바구니 업데이트">
					</p>
				</div>
			</div>



		</form:form>
	</c:otherwise>
</c:choose>
<!-- end cart -->



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



	<!-- jquery -->
	<script
		src="${pageContext.request.contextPath}/resources/assets2/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script
		src="${pageContext.request.contextPath}/resources/assets2/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script
		src="${pageContext.request.contextPath}/resources/assets2/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script
		src="${pageContext.request.contextPath}/resources/assets2/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script
		src="${pageContext.request.contextPath}/resources/assets2/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script
		src="${pageContext.request.contextPath}/resources/assets2/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script
		src="${pageContext.request.contextPath}/resources/assets2/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script
		src="${pageContext.request.contextPath}/resources/assets2/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script
		src="${pageContext.request.contextPath}/resources/assets2/js/sticker.js"></script>
	<!-- main js -->
	<script
		src="${pageContext.request.contextPath}/resources/assets2/js/main.js"></script>


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


	<script>
		function deleteTd(){
			const td = document.getElementById("cancel-item");
			td.remove();
		}
		
	</script>

</body>
</html>