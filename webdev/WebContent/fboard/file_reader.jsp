<%@page import="java.io.FileReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
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
	BufferedReader reader = null;
	try{
		String filePath = application.getRealPath("/WEB-INF/song.txt");
		reader = new BufferedReader(new FileReader(filePath));
		while(true){
			String str= reader.readLine();
			if(str == null) break;
			out.println(str+"<br/>");
		}
	}catch(FileNotFoundException e){
		out.println("파일을 찾을 수 없습니다.");		
	}catch(IOException e){
		out.println("파일을 읽을 수 없습니다.");
	}finally{
		if(reader!=null) try{reader.close();}catch(Exception e){};
	}
%>
</body>
</html>