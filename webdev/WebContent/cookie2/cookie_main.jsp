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
	<a href="cookie_form.jsp">쿠키 추가</a>
	<a href="cookie_remove.jsp?item=user_id">아이디 삭제</a>
	<a href="cookie_remove.jsp?item=user_name">이름 삭제</a>
	<a href="cookie_remove.jsp?item=user_level">레벨 삭제</a>
	<a href="cookie_remove.jsp?item=all">전체 삭제</a>
	<%
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (!cookie.getName().equals("JSESSIONID")) {
					out.println("<hr/>쿠키 이름 : " + cookie.getName() + "<br/>");
					out.println("쿠키 값 : " + URLDecoder.decode(cookie.getValue(), "UTF-8") + "<br/>");
					out.println("쿠키 유지 시간 : " + cookie.getMaxAge() + "<br/>");
				}
			}
		}
	%>
</body>
</html>