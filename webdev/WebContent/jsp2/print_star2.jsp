<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
   public String shape1() {
      StringBuffer result = new StringBuffer();
      for (int i = 1; i <= 5; i++) {
         for (int j = 1; j <= i; j++) {
            result.append("★");
         }
         result.append("<br/>");
      }
      return result.toString();
   }
   public String shape2() {
      StringBuffer result = new StringBuffer();
      for (int i = 1; i <= 5; i++) {
         for (int j = 1; j <= 6-i; j++) {
            result.append("★");
         }
         result.append("<br/>");
      }
      return result.toString();
   }
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<table>
<tr>
<td><%=shape1() %></td>
<td><%=shape2() %></td>
</tr>
</table>
<table>
<tr align="right">
<td><%=shape1() %></td>
<td><%=shape2() %></td>
</tr>
</table>
</div>
</body>
</html>