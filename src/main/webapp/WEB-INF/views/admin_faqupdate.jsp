<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>FAQ 수정 페이지입니다</h1>
<form:form modelAttribute="faqVO" action="${pageContext.request.contextPath }/admin_faqmain/insert_admin_faqmain">
<form:hidden path="faq_num"/>
카테고리 선택 
Mobile:<form:checkbox path="faq_category" value="Mobile"/>
Account:<form:checkbox path="faq_category" value="Account"/>
Payments:<form:checkbox path="faq_category" value="Payments"/>
Privacy:<form:checkbox path="faq_category" value="Privacy"/>
Delivery<form:checkbox path="faq_category" value="Delivery"/>
Basics<form:checkbox path="faq_category" value="Basics"/>
<br /><br />

제목: <form:input path="faq_title"/>
내용: <form:textarea path="faq_content"/>

<form:button type="submit">수정하기</form:button>

</form:form>
</body>
</html>