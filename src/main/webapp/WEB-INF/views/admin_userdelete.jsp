<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
</head>

<body>
	<h1>회원정보 삭제 페이지입니다.</h1>

	<table>
		<tr>
			<td>회원 번호</td>
			<td>회원 이름</td>
		</tr>
		<c:forEach var="item" items="${list }">
			<tr>
				<td>${item.num }</td>
				<td>${item.name }</td>
				<!-- <td><input type="button" value="회원삭제" id="delete" /></td> -->
				<td><input type="button" value="회원삭제"
					onclick="memberDel(${item.num})" /></td>
			</tr>
		</c:forEach>

	</table>



	<script type="text/javascript">
function memberDel(num){
	if(confirm("해당 회원을 삭제하시겠습니까?") == true){
		location.href="${pageContext.request.contextPath }/admin/admin_userdeleteconfirm?num="+num;
	};
	 };


</script>
</body>
</html>