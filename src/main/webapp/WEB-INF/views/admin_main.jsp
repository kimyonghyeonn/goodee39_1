<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>관리자페이지입니다</h1>
	<h3>관리자 ${sessionScope.account.name } 님 안녕하세요.</h3>
	<ul>
		<li><a
			href="${pageContext.request.contextPath }/admin/admin_userupdate">회원정보
				수정</a></li>
		<li><a
			href="${pageContext.request.contextPath }/admin/admin_userdelete">회원정보
				삭제</a></li>
		<li><a
			href="${pageContext.request.contextPath }/admin/admin_bbsupdate">리뷰게시판
				수정 / 삭제</a></li>
		<li><a
			href="${pageContext.request.contextPath }/admin_faqmain/admin_faqmain">FAQ
				게시판 생성 수정 / 삭제 </a></li>
		<li><a href="">상품 등록 </a></li>
		<li><a href="">상품 수정</a></li>
		<li><a
			href="${pageContext.request.contextPath }/admin/admin_product_delete">상품
				삭제</a></li>
		<li><a href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>
	</ul>
</body>
</html>