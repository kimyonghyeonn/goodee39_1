<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table, tr, tb {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
<body>
	<h1>회원 정보 수정 페이지 입니다.</h1>
	<%-- <form:form modelAttribute="memberVO"> --%>

	<table>
		<tr>
			<td>회원 번호</td>
			<td>회원 이름</td>
		</tr>
		<c:forEach var="item" items="${list }">
			<tr>
				<td><a
					href="${pageContext.request.contextPath }/admin/admin_userupdatepage?num=${item.num}">${item.num }</a>
				</td>
				<td>${item.name }</td>
			</tr>


		</c:forEach>

	</table>
	<%-- </form:form> --%>
</body>
</html>