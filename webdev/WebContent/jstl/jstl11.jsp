<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:redirect url="../board/list.jsp">
		<c:param name="pg" value="1"/>		
		<c:param name="searchCondition" value="title"/>		
		<c:param name="searchKeyword" value="오메아"/>		
	</c:redirect>
</body>
</html>