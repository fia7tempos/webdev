<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
h16.jsp<br/>
<%
	String name = request.getParameter("name");
	int age= Integer.parseInt(request.getParameter("age"));
	out.println("name : "+name+"<br/>");
	out.println("age : "+age+"<br/>");
%>
</body>
</html>