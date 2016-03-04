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
<c:set var="sodam" value="23" />
<c:choose>
	<c:when test="${sodam <= 15}">지학</c:when>
	<c:when test="${sodam <= 30}">이립</c:when>
	<c:when test="${sodam <= 40}">불혹</c:when>
	<c:when test="${sodam <= 50}">지천명</c:when>
	<c:when test="${sodam <= 60}">이순</c:when>
	<c:when test="${sodam <= 70}">고희</c:when>
	<c:otherwise>먹을만큼 먹었음</c:otherwise>
</c:choose>
</body>
</html>