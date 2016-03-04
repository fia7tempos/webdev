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
<c:set var="num" value="10"/>
<h1>${num}</h1>
<c:set var="num2" value="${num+10}"/>
<h1>${num2}</h1>
<c:set var="num3" value="${num2+100}"/>
<h1>${num3}</h1>
</body>
</html>