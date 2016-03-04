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
	<c:set var="singer" value="김윤아" scope="page" />	
	<c:set var="band" value="자우림" scope="request" />	
	<c:set var="song" value="미안해 널 미워해" scope="session" />	
	<jsp:forward page="jstl02_action.jsp"/>
</body>
</html>