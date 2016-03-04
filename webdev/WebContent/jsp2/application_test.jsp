<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String appPath = application.getContextPath();
	String absolutePath = application.getRealPath("/jsp2/application_test.jsp");
%>
appPath: <%=appPath %><br/>
absoulutePath: <%=absolutePath %><br/>
</body>
</html>