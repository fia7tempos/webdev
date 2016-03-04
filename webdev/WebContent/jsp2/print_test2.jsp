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
   String[] member = { 
      "강백호", "서태웅", "송태섭", "정대만", "채소연", "이한나" 
   };
%>
<%
   out.println("[for1]<br/>");
   for(int i=0; i<member.length; i++) {
      out.println(i == member.length - 1 ? member[i] : member[i] + ", ");
   }
%>
<hr/>
[for2]<br/>
<% for(int i=0; i<member.length; i++) { %>
   <%=i == member.length - 1 ? member[i] : member[i] + ", " %>
<% } %>
<hr/>
<%
   out.println("[while1]<br/>");
   int i = 0;
   while(i<member.length) {
      out.println(i == member.length - 1 ? member[i] : member[i] + ", ");
      i++;
   }
%>
<hr/>
[while2]<br/>
<% int j = 0; %> 
<% while(j<member.length) { %>
   <%=j == member.length - 1 ? member[j] : member[j] + ", " %>
   <% j++; %>
<% } %>
<hr/>
<%
   out.println("[do~while1]<br/>");
   int k = 0;
   do {
      out.println(k == member.length - 1 ? member[k] : member[k] + ", ");
      k++;
   } while(k<member.length);
%>
<hr/>
[do~while2]<br/>
<% int l = 0; %>
<% do { %>
   <%=l == member.length - 1 ? member[l] : member[l] + ", " %>
   <% l++; %>
<% } while(l<member.length); %>
<hr/>
</body>
</html>