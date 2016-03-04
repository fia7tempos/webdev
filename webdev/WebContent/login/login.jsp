<%@page import="library.cookie.Cooker"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="cookie_lib.jsp" %>
<%--
	String value = getCookieValue("remember_id", request); //파일에 메소드영역 넣어서 받기
--%>

<%
	String value = "";
	Cooker cooker = new Cooker(request);
	if(cooker.isExist("user_id")){
		value = cooker.getValue("user_id");		
	}
%>
<form action="login_action.jsp" method="post">
<table>
	<caption>로그인</caption>
<tr>
	<th>id</th>
	<td><input type="text" name="user_id" autofocus="autofocus" required="required" value="<%=value %>"/></td>
</tr>
<tr>
	<th>pw</th>
	<td><input type="password" name="user_pw" required="required"/></td>
</tr>
<tr>
	<td colspan="2" align="center">			
	<%if(!value.equals("")){  %>
		<input type="checkbox" name="checkid" checked="checked"/> ID 저장
	<%}else {%>
		<input type="checkbox" name="checkid" /> ID 저장
	<%} %>		
	</td>
</tr>
<tr>	
	<td colspan="2" align="center">			
		<input type="submit" value="로그인"/>
		<input type="button" value="회원가입"/>
	</td>	
</tr>
</table>
</form>
</body>
</html>