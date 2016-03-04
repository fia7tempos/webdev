<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
	int sum = 0;
	
	for(int i=1;i<=100;i++){
		sum += i;
	}
	request.setAttribute("sum", sum);
	RequestDispatcher dispatcher = request.getRequestDispatcher("el01_result.jsp");
	dispatcher.forward(request, response);
	
%>