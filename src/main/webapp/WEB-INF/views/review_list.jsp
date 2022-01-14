<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<style type="text/css">
table, tr, td, th {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>

</head>
<body>
	<h1>게시판 리스트</h1>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자 아이디</th>
			<th>작성자 이름</th>
			<th>생성 날짜</th>
		</tr>
		<c:forEach var="item" items="${list}">
			<tr>

				<td>${item.num}</td>

				<td>${item.num}</td>
				<td><a
					href="${pageContext.request.contextPath}/bbs/review_detail?num=${item.num}">${item.title }</a></td>
				<td>${item.owneremail }</td>
				<td>${item.ownername }</td>
				<td>${item.createdate }</td>
			</tr>
		</c:forEach>
	</table>
	<hr />
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
	</select>
	<input type="text" id="text" name="text" value="${title }" />
	<%
	} else if (title != null) {
	%>

	<select name="category" id="category">
		<option value="title" selected>제목</option>
		<option value="content">내용</option>
		<option value="both">제목+내용</option>
	</select>
	<input type="text" id="text" name="text" value="${title }" />



	<%
	} else if (content != null) {
	%>
	<select name="category" id="category">
		<option value="title">제목</option>
		<option value="content" selected>내용</option>
		<option value="both">제목+내용</option>
	</select>
	<input type="text" id="text" name="text" value="${content }" />



	<%
	} else {
	%>


	<select name="category" id="category">
		<option value="title">제목</option>
		<option value="content">내용</option>
		<option value="both">제목+내용</option>
	</select>
	<input type="text" id="text" name="text" />
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
</body>
</html>