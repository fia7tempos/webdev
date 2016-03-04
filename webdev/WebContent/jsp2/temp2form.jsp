<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>이상의 오감도 중 몇 줄을 보실건가요?
<form action="temp2.jsp" method="get">
<select name="ogam">
<%for(int y=1; y <=13; y++) {%>
   <option><%=y %></option> <% } %>
   
   
</select>
<input type="submit" value="보기" />
</form>
</body>
</html>