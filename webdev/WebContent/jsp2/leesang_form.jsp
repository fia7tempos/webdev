<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="leesang_process.jsp" method="get">
<select name="length">
	<% for(int i=1;i<=13;i++){%>
	<option><%=i %></option>
	<%} %>
</select>
<input type="submit" />
</form>
</body>
</html>