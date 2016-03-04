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
<c:set var="num1" value="${param.num1}"/>
<c:set var="num2" value="${param.num2}"/>
<c:set var="num3" value="${num1+num2}"/>
${param.num1},${param.num2},${num3}
</body>
</html>