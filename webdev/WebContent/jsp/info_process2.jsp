<%@page import="java.util.Map"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- p115 2-8을 작성. action은 info_process.jsp --%>
<h2>개인 정보 입력</h2><br/>
<%
	Map<String,String[]> map = request.getParameterMap();
	
	for(String key : map.keySet()){
		String[] array = map.get(key);
		
		for(int i=0;i<array.length;i++){
			out.println(key+" : "+array[i]+"<br/>");
		}
	}
%>

</body>
</html>
