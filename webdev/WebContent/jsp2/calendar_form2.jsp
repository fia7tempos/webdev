<%@page import="java.time.DayOfWeek"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   Calendar today = Calendar.getInstance();
   int year = today.get(Calendar.YEAR);
   int month = today.get(Calendar.MONTH) + 1;
%>
<form action="calendar.jsp" method="get">
<select name="year">
<% for(int y=year-5; y <= year+5; y++) { %>
   <option
   <% if(y==year) { %> selected <% } %>
   ><%=y %></option>
<% } %>
</select>년
<select name="month">
<% 
   for(int m=1; m<=12; m++) { 
      if(m==month) {
         out.println("<option selected>" + m + "</option>");
      } else {
         out.println("<option>" + m + "</option>");
      }
   } 
%>
</select>월
<input type="submit" value="보기" />
</form>
</body>
</html>