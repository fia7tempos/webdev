<%@page import="bean.hello.Dice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dice.jsp</title>
</head>
<body>
<h1>주사위는 던져졌다 : <%=Dice.getNumber() %> </h1>
<%
	String msg="정대만";
	out.print(sayIam(msg));
%>

</body>
</html>

<%!
public String sayIam(String name){
	return "그래 난 "+name+". 가끔은 포기하는 남자지";	
}
%>
