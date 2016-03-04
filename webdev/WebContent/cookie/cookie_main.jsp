<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("name")) {
				out.println("쿠키 이름 : " + cookie.getName() + "<br/>");
				out.println("쿠키 값 : " + URLDecoder.decode(cookie.getValue(),"UTF-8") + "<br/>");
				out.println("쿠키 유지 시간 : " + cookie.getMaxAge() + "<br/>");
			}
		}
	%>
</body>
</html>