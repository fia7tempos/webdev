<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! 
public String charFilter(String str){
	str = str.replace("<","&lt;");	
	str = str.replace("<","&gt;");
	return str;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
<% String content = "<script>location.href='http://naver.com';</script>"; %>
<c:out value="<%=content %>" escapeXml="true"/>
</form>
</body>
</html>