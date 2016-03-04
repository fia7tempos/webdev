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
jstl12.jsp 입니다.
<%
	String msg="안녕하세요~"; // 이렇게는 전달 불가	
%>
<c:import url="jstl12_inner.jsp" >
	<c:param name="msg" value="<%=msg %>"/>
</c:import>
bottom입니다.
</body>
</html>