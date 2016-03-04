<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int number1=0;
	int number2=0;
	try{
		number1 = Integer.parseInt(request.getParameter("number1"));
		number2 = Integer.parseInt(request.getParameter("number2"));
		
	
%>
<h1><%=number1 %> + <%=number2 %> = <%=number1 + number2 %></h1>
<%
	}
	catch(NumberFormatException ne){
		out.println("이상한 값이 들어왔습니다.");
	
	}catch(Exception e){
		out.println("값이 잘못되었습니다.");
	}
%>
</body>
</html>