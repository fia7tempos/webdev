<%@page import="java.util.Calendar"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE>

<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form>
      <%
         Calendar cal = Calendar.getInstance();
         int year = cal.get(Calendar.YEAR);
         int month = cal.get(Calendar.MONTH) + 1;
      %>
      <%
         if (request.getParameter("monthDown") != null) {
            month = Integer.parseInt(request.getParameter("monthDown")) - 1;
            year = Integer.parseInt(request.getParameter("year"));
         } 
         if (request.getParameter("monthUp") != null) {
            month = Integer.parseInt(request.getParameter("monthUp")) + 1;
            year = Integer.parseInt(request.getParameter("year"));
         }
         if (month > 12) {
            month = 1;
            year++;
         }
         if (month < 1) {
            month = 12;
            year--;
         }
      %>
      <table border="2">

         <caption>

            <a href="cal_es.jsp?monthDown=<%=month%>&year=<%=year%>"><input type="button"
               value="◀"></a> <b>
               <%=year %>년 <%=month%>월</b> <a
               href="cal_es.jsp?monthUp=<%=month%>&year=<%=year%>"><input type="button"
               value="▶"></a>

         </caption>

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
               cal.set(year, month - 1, 1);
               int week = cal.get(Calendar.DAY_OF_WEEK);
               int endDay = cal.getActualMaximum(Calendar.DATE);
               for (int i = 1; i < week; i++) {
                  out.print("<td></td>");
               }

               for (int i = 1, w = week; i <= endDay; i++, week++) {
                  out.print("<td>" + i + "</td>");
                  if (week % 7 == 0) {
                     out.print("</tr><tr>");
                  }
               }
            %>
         </tr>
      </table>
   </form>
</body>
</html>