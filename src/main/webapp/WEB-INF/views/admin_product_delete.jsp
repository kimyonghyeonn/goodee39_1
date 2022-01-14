<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, tr, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>
	<h1>상품 삭제 페이지입니다.</h1>

	<table>
		<tr>

			<th>상품 이름</th>
			<th>상품 가격</th>
			<th>상품 상세설명1</th>
			<th>상품 상세설명2</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="item" items="${list }">
			<tr>

				<td>${item.product_name }</td>
				<td>${item.product_price }</td>
				<td>${item.product_desc1 }</td>
				<td>${item.product_desc2 }</td>
				<td><form:form modelAttribute="productVO"
						action="${pageContext.request.contextPath }/admin/delete_product">
						<form:hidden path="product_num" value="${item.product_num }" />
						<form:button type="submit">상품삭제</form:button>
					</form:form></td>
			</tr>

		</c:forEach>
	</table>
</body>
</html>