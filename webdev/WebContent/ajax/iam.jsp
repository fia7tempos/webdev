<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
	String name = request.getParameter("name");	
	String hobby = request.getParameter("hobby");	
%>
그래, 난 <%=name %>.
안 선생님 <%=hobby %>가 하고 싶어요.
