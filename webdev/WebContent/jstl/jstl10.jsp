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
<c:catch var="e">
<%
	if(true)throw new RuntimeException("그냥 예외 발생시켜봄-_-");
%>
</c:catch>
<c:if test="${e!=null}">
에러 : ${e.message}<br/>
</c:if>
</body>
</html>