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
<% String name = "힣힣"; %>
<table>
<tr>
	<td colspan="2" bgcolor="#ffaaaa" height="150">
	<jsp:include page="top.jsp" />
	</td>
</tr>
<tr>
	<td bgcolor="#aaaaff" width="300" >
	<jsp:include page="menu.jsp" />
	</td>
	<td bgcolor="#ffffaa">
	<jsp:include page="content.jsp" >
		<jsp:param value="<%=name %>" name="name"/>
	</jsp:include>
	</td>
</tr>
</table>

</body>
</html>