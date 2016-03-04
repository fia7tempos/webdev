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
   int year = Integer.parseInt(request.getParameter("year"));
   int month = Integer.parseInt(request.getParameter("month"));

   Calendar cal = Calendar.getInstance();
   cal.set(year, month - 1, 1);
   int week = cal.get(Calendar.DAY_OF_WEEK);
   int endDay = cal.getActualMaximum(Calendar.DATE);
%>
<table border="1">
   <caption><%=year %>년 <%=month %>월</caption>
   <tr>
      <td>일</td>
      <td>월</td>
      <td>화</td>
      <td>수</td>
      <td>목</td>
      <td>금</td>
      <td>토</td>
   </tr>
   <tr>
<%
   for (int sp = 1; sp < week; sp++) {
      out.println("<td></td>");
   }

   for (int d = 1, w = week; d <= endDay; d++, w++) {
      out.println("<td>" + d + "</td>");
      if (w % 7 == 0)
         out.println("</tr><tr>");
   }
%>
</tr>
</table>
</body>
</html>