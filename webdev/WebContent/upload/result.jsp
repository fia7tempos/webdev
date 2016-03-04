<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
	String filename = request.getParameter("filename");
	boolean isImage = request.getParameter("isImage").equals("true");
	//String contentype = request.getParameter("contenttype");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="../download?filename=<%=filename %>"><%=filename %></a>
<hr/>
<%
if(isImage){%>
	<img src="../download?filename=thumb_<%=filename %>"/>
	<img src="../download?filename=<%=filename %>"/>
<%} %>
 
</body>
</html>