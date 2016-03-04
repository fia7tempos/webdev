<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
	Cookie c = new Cookie("name",URLEncoder.encode("슈지","UTF-8"));
	c.setMaxAge(10);
	response.addCookie(c);
	response.sendRedirect("cookie_main.jsp");
%>