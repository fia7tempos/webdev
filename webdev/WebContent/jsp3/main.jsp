<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(../css/main.css);
</style>
</head>
<body>
<% String name="마에스트로"; %>
<table>
<tr>
	<td colspan="2" bgcolor="#ffaaaa" height="150">
	<%@include file="top.jsp"  %>
	</td>
</tr>
<tr>
	<td bgcolor="#aaaaff" width="300" >
	<%@include file="menu.jsp"  %>
	</td>
	<td bgcolor="#ffffaa">
	<%@include file="content.jsp"  %>
	</td>
</tr>
</table>

</body>
</html>