<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="auth.jsp" %>

	<%=user_name%>(<%=user_id%>)님이 로그인하셨습니다.
	<br />
	<a href="logout.jsp">로그아웃</a>
</body>
</html>