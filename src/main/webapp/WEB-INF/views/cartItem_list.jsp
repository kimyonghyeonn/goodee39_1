<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>장바구니 목록입니다.</h1>
	<table>
		<tr>
			<td>제품 이름</td>
			<td>제품 가격</td>
			<td>제품 수량</td>
			<td>제품 합계</td>
		</tr>
		<c:forEach var="item" items="${list }">
			<tr>

				<td>${list.price }</td>
				<td>${list.amount }</td>
				<td>${list.money }</td>
			</tr>


		</c:forEach>
	</table>
</body>
</html>