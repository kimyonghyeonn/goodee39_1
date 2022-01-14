<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<h1>FAQ공지사항 게시판 관리 페이지 입니다</h1>

	<table>
		<tr>
			<td>게시물 번호</td>
			<td>게시물 종류</td>
			<td>게시물 제목</td>
			<td>게시물 내용</td>
			<td>수정</td>
			<td>삭제</td>
		</tr>

		<c:forEach var="item" items="${list }">
			<tr>
				<td>${item.faq_num }</td>
				<td>${item.faq_category }</td>
				<td>${item.faq_title }</td>
				<td>${item.faq_content }</td>
				<td><a
					href="${pageContext.request.contextPath }/admin_faqmain/admin_faqmain_update?faq_num=${item.faq_num}">수정</a></td>
				<td><a
					href="${pageContext.request.contextPath }/admin_faqmain/admin_faqmain_delete?faq_num=${item.faq_num}">삭제</a></td>
				<%-- 	<td><form action="${pageContext.request.contextPath }/admin_faqmain/admin_faqmain_delete">
	<input type="hidden" name="faq_num" value="${item.faq_num}"></form></td> --%>

			</tr>
		</c:forEach>
	</table>
	<a
		href="${pageContext.request.contextPath }/admin_faqmain/admin_faqmain_create">FAQ게시물
		생성</a>
</body>
</html>