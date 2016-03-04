<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% int row = Integer.parseInt(request.getParameter("ogam"));%>
<%out.println("이상의 오감도를 읽기 귀찮다오.<br/>"); %>
<%for(int i=1;i<=row;i++){ out.println("제 " + i+" 번째 아가 무섭다오.<br/>");}%>
<%=result(row) %>

</body>
</html>
    <%!
    public String result(int row){
       for(int i=1; i<=row; i++) {
          System.out.println("제 " + i+" 번째 아이가 무섭소.");
       }
       return " ";
    }
    
    
    %>