<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
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
	href="${pageContext.request.contextPath}/resources/assets/css/custom.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/footer.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/fontawesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/sidebar.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>









<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Barlow+Semi+Condensed"
	rel="stylesheet">





</head>
<style>
body {
	-ms-overflow-style: none;
	font-family: 'Barlow Semi Condensed', sans-serif;
}

::-webkit-scrollbar {
	display: none;
}

.main-section {
	background: #FFFFFF;
	width: 80%;
	margin: 0 auto;
	padding: 10px;
	margin-top: 50px;
	margin-bottom: 100px;
	box-shadow: 0px 2px 7px 1px #aa9191;
	overflow-y: scroll
}

.hedding-title h1 {
	margin: 0px;
	padding: 0px 0px 10px 0px;
	font-size: 25px;
}

.average-rating {
	float: left;
	text-align: center;
	width: 30%;
}

.average-rating h2 {
	margin: 0px;
	font-size: 80px;
}

.average-rating p {
	margin: 0px;
	font-size: 20px;
}

.fa-star, .fa-star-o, .fa-star-half-o {
	color: #FDC91B;
	font-size: 25px !important;
}

.progress, .progress-2, .progress-3, .progress-4, .progress-5 {
	background: #F5F5F5;
	border-radius: 13px;
	height: 18px;
	width: 97%;
	padding: 3px;
	margin: 5px 0px 3px 0px;
}

.progress:after, .progress-2:after, .progress-3:after, .progress-4:after,
	.progress-5:after {
	content: '';
	display: block;
	background: #337AB7;
	width: 80%;
	height: 100%;
	border-radius: 9px;
}

.progress-2:after {
	width: 60%;
}

.progress-3:after {
	width: 40%;
}

.progress-4:after {
	width: 20%;
}

.progress-5:after {
	width: 10%;
}

.loder-ratimg {
	display: inline-block;
	width: 40%;
}

.start-part {
	float: right;
	width: 30%;
	text-align: center;
}

.start-part span {
	color: #337AB7;
	font-size: 23px;
}

.reviews h1 {
	margin: 10px 0px 20px 180px;
}

.user-img img {
	height: 80px;
	width: 80px;
	border: 1px solid blue;
	border-radius: 50%;
}

.user-img-part {
	width: 30%;
	float: left;
}

.user-img {
	width: 48%;
	float: left;
	text-align: center;
}

.user-text {
	float: left;
	margin-left: 200px;
}

.user-text h4, .user-text p {
	margin: 0px 0px 5px 0px;
}

.user-text p {
	font-size: 20px;
	font-weight: bold;
}

.user-text h4, .user-text span {
	color: #B3B5B4;
}

.comment {
	width: 68%;
	float: right;
	width:
}

#create-btn {
	margin-left: 200px;
}
</style>
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







	<div class="main-section">
		<div class="hedding-title">
			<h1>Star Rating System</h1>
		</div>
		<div class="rating-part">
			<div class="average-rating">
				<h2>${avg }</h2>

				<c:forEach var="i" begin="1" end="${avg}">
					<i aria-hidden="true" class="fa fa-star"></i>
				</c:forEach>
				<!-- <i aria-hidden="true" class="fa fa-star"></i> -->
				<!-- 		<i aria-hidden="true" class="fa fa-star"></i>  -->
				<!-- 	<i class="fa fa-star-half-o" aria-hidden="true"></i> 
				<i aria-hidden="true" class="fa fa-star-o"></i>
				<i aria-hidden="true" class="fa fa-star-o"></i> -->
				<p>Total Review Average Rating</p>
				<p>실제로 작동합니다</p>
			</div>
			<div class="loder-ratimg">
				<div class="progress"></div>
				<div class="progress-2"></div>
				<div class="progress-3"></div>
				<div class="progress-4"></div>
				<div class="progress-5"></div>
			</div>
			<div class="start-part">
				<i aria-hidden="true" class="fa fa-star"></i> <i aria-hidden="true"
					class="fa fa-star"></i> <i aria-hidden="true" class="fa fa-star"></i>
				<i aria-hidden="true" class="fa fa-star"></i> <i aria-hidden="true"
					class="fa fa-star"></i> <span>80%</span><br> <i
					aria-hidden="true" class="fa fa-star"></i> <i aria-hidden="true"
					class="fa fa-star"></i> <i aria-hidden="true" class="fa fa-star"></i>
				<i aria-hidden="true" class="fa fa-star"></i> <i aria-hidden="true"
					class="fa fa-star-o"></i> <span>60%</span><br> <i
					aria-hidden="true" class="fa fa-star"></i> <i aria-hidden="true"
					class="fa fa-star"></i> <i aria-hidden="true" class="fa fa-star"></i>
				<i aria-hidden="true" class="fa fa-star-o"></i> <i
					aria-hidden="true" class="fa fa-star-o"></i> <span>40%</span><br>
				<i aria-hidden="true" class="fa fa-star"></i> <i aria-hidden="true"
					class="fa fa-star"></i> <i aria-hidden="true" class="fa fa-star-o"></i>
				<i aria-hidden="true" class="fa fa-star-o"></i> <i
					aria-hidden="true" class="fa fa-star-o"></i> <span>20%</span><br>
				<i aria-hidden="true" class="fa fa-star"></i> <i aria-hidden="true"
					class="fa fa-star-o"></i> <i aria-hidden="true"
					class="fa fa-star-o"></i> <i aria-hidden="true"
					class="fa fa-star-o"></i> <i aria-hidden="true"
					class="fa fa-star-o"></i> <span>10%</span>
			</div>
			<div style="clear: both;"></div>
			<div class="reviews">
				<h1>Reviews</h1>
			</div>


















			<c:forEach var="item" items="${list}">
				<div class="comment-part">
					<div class="user-img-part">
						<!-- <div class="user-img">
                    <img src="/demo/man03.png">
                    </div> -->
						<div class="user-text">
							<h4>${item.createdate }</h4>
							<p>
								<a
									href="${pageContext.request.contextPath}/bbs/review_detail?num=${item.num}">${item.ownername }</a>
							</p>
							<!-- <span>Report</span> -->

						</div>
						<div style="clear: both;"></div>
					</div>
					<div class="comment">
						<c:forEach var="i" begin="1" end="${item.productscore }">
							<i aria-hidden="true" class="fa fa-star" value="${i}"></i>
						</c:forEach>
						<!-- 	<i aria-hidden="true" class="fa fa-star"></i> 
						<i aria-hidden="true" class="fa fa-star"></i> 
						<i aria-hidden="true" class="fa fa-star-o"></i> 
						<i aria-hidden="true" class="fa fa-star-o"></i> 
						<i aria-hidden="true" class="fa fa-star-o"></i> -->
						<p>${item.content }</p>
					</div>
					<div style="clear: both;"></div>
				</div>
			</c:forEach>

			<button id="create-btn">추가</button>
			<hr />



			<%
			int num = (Integer) request.getAttribute("num");
			int count = (Integer) request.getAttribute("count");
			int total = count / 10 + ((count % 10 == 0) ? 0 : 1);
			int minBlock = (((num - 1) / 10) * 10) + 1;
			int maxBlock = (((num - 1) / 10) + 1) * 10;
			pageContext.setAttribute("total", total);
			pageContext.setAttribute("minBlock", minBlock);
			pageContext.setAttribute("maxBlock", maxBlock);

			String query = "";

			String title = (String) request.getAttribute("title");
			String content = (String) request.getAttribute("content");

			if (title != null) {
				query += "&title=" + title;

			}

			if (content != null) {
				query += "&content" + content;
			}

			pageContext.setAttribute("query", query);
			%>

			<c:choose>
				<c:when test="${(minBlock-1) < 1 }">
					<span>◀◀</span>
				</c:when>
				<c:otherwise>
					<a
						href="${pageContext.request.contextPath}/bbs/main?num=${minBlock-1}${query}">◀◀</a>
				</c:otherwise>
			</c:choose>
			&nbsp;&nbsp;



			<c:choose>
				<c:when test="${num == 1 }">
					<span>◀</span>
				</c:when>
				<c:otherwise>
					<a
						href="${pageContext.request.contextPath}/bbs/main?num=${num-1}${query}">◀</a>
				</c:otherwise>
			</c:choose>



			<c:forEach begin="${minBlock }"
				end="${(total<maxBlock)? total : maxBlock }" step="1" var="i">
				<c:choose>
					<c:when test="${num == i }">
						<span>${i }</span>
					</c:when>

					<c:otherwise>
						<a
							href="${pageContext.request.contextPath }/bbs/main?num=${i}${query}">${i }</a>
					</c:otherwise>
				</c:choose>

			</c:forEach>




			<c:choose>
				<c:when test="${num == total }">
					<span>▶</span>
				</c:when>
				<c:otherwise>
					<!-- count를 10으로 나눴을때 나머지가 0이라면 더하지 않고, 나머지가 있다면 1을 더한다 -->
					<a
						href="${pageContext.request.contextPath}/bbs/main?num=${num+1}${query}">▶</a>
				</c:otherwise>
			</c:choose>

			&nbsp;&nbsp;
			<c:choose>
				<c:when test="${maxBlock > total}">
					<span>▶▶</span>
				</c:when>
				<c:otherwise>
					<a
						href="${pageContext.request.contextPath}/bbs/main?num=${maxBlock+1}${query}">▶▶</a>
				</c:otherwise>
			</c:choose>
			&nbsp;&nbsp;
			<hr />

			<%
			if ((title != null) && (content != null)) {
			%>
			<select name="category" id="category">
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="both" selected>제목+내용</option>
			</select> <input type="text" id="text" name="text" value="${title }" />
			<%
			} else if (title != null) {
			%>

			<select name="category" id="category">
				<option value="title" selected>제목</option>
				<option value="content">내용</option>
				<option value="both">제목+내용</option>
			</select> <input type="text" id="text" name="text" value="${title }" />



			<%
			} else if (content != null) {
			%>
			<select name="category" id="category">
				<option value="title">제목</option>
				<option value="content" selected>내용</option>
				<option value="both">제목+내용</option>
			</select> <input type="text" id="text" name="text" value="${content }" />



			<%
			} else {
			%>


			<select name="category" id="category">
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="both">제목+내용</option>
			</select> <input type="text" id="text" name="text" />
			<%
			}
			%>
			<button id="search">검색</button>



			<hr />

			<script type="text/javascript">
				$(function() {
					$("#create-btn")
							.click(
									function() {
										location.href = "${pageContext.request.contextPath}/bbs/create_review";
									});

					$("#search")
							.click(
									function() {
										let category = $("#category").val();
										let text = $("#text").val();

										if (category == "title") {
											location.href = "${pageContext.request.contextPath}/bbs/main?title="
													+ text;
										} else if (category == "content") {
											location.href = "${pageContext.request.contextPath}/bbs/main?content="
													+ text;
										} else if (category == "both") {
											location.href = "${pageContext.request.contextPath}/bbs/main?title="
													+ text + "&content=" + text;
										}

										/* 		location.href= "${pageContext.request.contextPath}/bbs/main?"+category+"="+text; /* get방식으로 전송 */

									})

				});
			</script>




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




	<!-- End Footer -->

	<!-- Start Script -->
	<%-- <script src="${pageContext.request.contextPath}/resources/assets/js/jquery-1.11.0.min.js"></script> --%>
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