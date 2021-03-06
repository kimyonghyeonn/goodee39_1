<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%request.setCharacterEncoding("utf-8"); %>
<html lang="en">
<head>

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Feedback Form in HTML Example </title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
    <meta name="author" content="Codeconvey" />
   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/review_style.css">
    <!--Only for demo purpose - no need to add.-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/review_demo.css" />




    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/order_form.css">



<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/templatemo.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/fontawesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/sidebar.css">
<style>

</style>
	
</head>
<body>
  <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
    <div class="container text-light">
        <div class="w-100 d-flex justify-content-between">
            <div>
                <i class="fa fa-envelope mx-2"></i>
                <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">filmstorage@naver.com</a>
                <i class="fa fa-phone mx-2"></i>
                <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-4948-9140</a>
            </div>
            <div>
                <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
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
<div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="w-100 pt-1 mb-5 text-right">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <form action="" method="get" class="modal-content modal-body border-0 p-0">
            <div class="input-group mb-2">
                <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                <button type="submit" class="input-group-text bg-success text-light">
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





<header class="ScriptHeader">
    <div class="rt-container">
    	<div class="col-rt-12">
        	<div class="rt-heading">
            	<h1>Film Storage ?????? ????????? </h1>
                <p>????????? ???????????? ??????????????????? ????????? ???????????????.</p>
            </div>
        </div>
    </div>
</header>

<section>
    <div class="rt-container">
          <div class="col-rt-12">
              <div class="Scriptcontent">
              
       
<div class="feedback">
<p>${bbsVO.ownername }???</p><br />
?????? ?????? Film Storage??? ???????????? ?????????????????? ???????????????. ?????? ????????? ?????? ??????????????????? ?????? ???????????? ????????? ?????????, ????????? ?????? ????????? ?????? ???????????? ????????? ???????????????.</p>

<h4>???????????? ?????? / ???????????? ????????? ??????????????????.</h4>


<form:form modelAttribute="bbsVO" >

<label>1. ????????? ?????? ??????????????? ?????????????????????????</label><br>
  
<span class="star-rating">
<form:radiobutton path="productscore" value="1"/><i></i>
<form:radiobutton path="productscore" value="2"/><i></i>
<form:radiobutton path="productscore" value="3"/><i></i>
<form:radiobutton path="productscore" value="4"/><i></i>
<form:radiobutton path="productscore" value="5"/><i></i>
 
</span>

  <div class="clear"></div> 
  <hr class="survey-hr">
<label>2. ?????? ????????? ?????????????????????????</label><br>
<span class="star-rating">
  
<form:radiobutton path="deleveryscore" value="1"/><i></i>
<form:radiobutton path="deleveryscore" value="2"/><i></i>
<form:radiobutton path="deleveryscore" value="3"/><i></i>
<form:radiobutton path="deleveryscore" value="4"/><i></i>
<form:radiobutton path="deleveryscore" value="5"/><i></i>
</span>


  <div class="clear"></div> 
  <hr class="survey-hr">
<label>3. ???????????? ???????????? ????????????????????????? </label><br><br/>
  <div style="color:grey">
    <span style="float:left">
     ??????
    </span>
    <span style="float:right">
      ??????
    </span>
    
  </div>
<span class="scale-rating">
  <label value="1">
  <form:radiobutton path="reviewscore" value="1" name="rating"/>
  <label style="width:100%;"></label>
  </label>
  <label value="2">
  <form:radiobutton path="reviewscore" value="1" name="rating"/>
  <label style="width:100%;"></label>
  </label>
  <label value="3">
  <form:radiobutton path="reviewscore" value="1" name="rating"/>
  <label style="width:100%;"></label>
  </label>
  <label value="4">
  <form:radiobutton path="reviewscore" value="1" name="rating"/>
  <label style="width:100%;"></label>
  </label>
  <label value="5">
  <form:radiobutton path="reviewscore" value="1" name="rating"/>
  <label style="width:100%;"></label>
  </label>
  <label value="6">
  <form:radiobutton path="reviewscore" value="1" name="rating"/>
  <label style="width:100%;"></label>
  </label>
  <label value="7">
  <form:radiobutton path="reviewscore" value="1" name="rating"/>
  <label style="width:100%;"></label>
  </label>
  <label value="8">
  <form:radiobutton path="reviewscore" value="1" name="rating"/>
  <label style="width:100%;"></label>
  </label>
  <label value="9">
  <form:radiobutton path="reviewscore" value="1" name="rating"/>
  <label style="width:100%;"></label>
  </label>
  <label value="10">
  <form:radiobutton path="reviewscore" value="1" name="rating"/>
  <label style="width:100%;"></label>
  </label>
</span>

  <div class="clear"></div> 
   <hr class="survey-hr"> 
   <ul>
    <li>???????????? ????????? ??????????????????</li>
  	<li>FujiC200:<form:radiobutton path="category" value="1" name="rating"/></li>
  	<li>Codak:<form:radiobutton path="category" value="2" name="rating"/></li>
  	<li>Expired:<form:radiobutton path="category" value="4" name="rating"/></li>
  	<li>B&W:<form:radiobutton path="category" value="3" name="rating"/></li>
  	<li>Digital:<form:radiobutton path="category" value="6" name="rating"/></li>
  </ul>
   
  
  <hr class="survey-hr"> 
  <label for="m_3189847521540640526commentText">4. ????????????:</label><br/><br/>
  <h1 style="width: 100%;">${bbsVO.title }</h1><br />
  
 
  <br>
    <hr class="survey-hr"> 
  
<label for="m_3189847521540640526commentText">4. ????????????: ????????? ????????? ????????? ????????? ???????????????:</label><br/><br/>


<h1 style="width: 100%;">${bbsVO.content }</h1>
<br />
<br>
	
  <div class="clear"></div> 
  <c:if test="${sessionScope.account.email == bbsVO.owneremail }">
  
  
<input type="button" id="modify" style="background:#59ab6e;color:#fff;padding:12px;border:0"  value="?????? ????????????">&nbsp;
<input type="button" id="delete" style="background:#59ab6e;color:#fff;padding:12px;border:0" value="?????? ????????????" >&nbsp;

<!--   <button id="modify" style="background:#59ab6e;color:#fff;padding:12px;border:0">?????? ????????????</button>&nbsp;
  <button  id="delete" style="background:#59ab6e;color:#fff;padding:12px;border:0">?????? ????????????</button>&nbsp; -->


</c:if>

</form:form>

                  </div>
           
    		</div>
		</div>
    </div>

 
</section>

<div class="ScriptTop">
  <div class="rt-container">
      <div class="col-rt-4" id="float-right">

          <!-- Ad Here -->
          
      </div>
      <div class="col-rt-2">
          <ul>
              <li><a href="index.html" title="Back to tutorial page">?????? ???????????? ????????????</a></li>
          </ul>
      </div>
  </div>
</div>
<script type="text/javascript">
		$(function(){
			$("#delete").click(function(){
				if(confirm("????????? ????????????????????????")){
					location.href = "${pageContext.request.contextPath}/bbs/review_delete?num=${bbsVO.num}";
					/* get???????????? ?????? */
				}
			});
			$("#modify").click(function(){
				location.href = "${pageContext.request.contextPath}/bbs/review_modify?num=${bbsVO.num}"; 
		
			});
		});
	</script>

























    























    

	</body>
</html>