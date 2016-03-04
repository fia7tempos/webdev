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
<table>
<c:forEach var="no" begin="0" end="10" step="1" varStatus="idx">
<tr>
	<td>${no}</td>
	<td>${idx.index}</td>
	<td>${idx.count}</td>
	<td>${idx.first},${idx.last}</td>
</tr>
</c:forEach>
</table>
</body>
</html>