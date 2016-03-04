<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String item = request.getParameter("item");
	//파라미터가 한개가 아니라면
	//String[] items = request.getParameterValues("item");
	Cookie[] cookies = request.getCookies();
	for (Cookie c : cookies) {
		if (c.getName().equals(item) || item.equals("all")) {
			// = new Cookie(item,"");
			c.setMaxAge(0);
			response.addCookie(c);
		}
	}
	response.sendRedirect("cookie_main.jsp");
%>
