<%@page import="board.model.BoardVO"%>
<%@page import="board.model.BoardDAOImpl"%>
<%@page import="board.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="boardVO" class="board.model.BoardVO"/>
<jsp:setProperty property="*" name="boardVO"/>
<%
// 	String title = request.getParameter("title"); //jsp:useBean으로 자동맵핑
// 	String name = request.getParameter("name");
// 	String pwd = request.getParameter("pwd");
// 	String content = request.getParameter("content");
// 	pwd = DigestUtils.sha512Hex(pwd);
	
	BoardDAO boardDAO = BoardDAOImpl.getInstance();
	boolean result = boardDAO.insertArticle(boardVO);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
<% if(result) {
	response.sendRedirect("list.jsp");
   } else { %>
	alert('글 등록 실패');
	location.href='javascript:history.back();';
<% } %>
</script>
</body>
</html>
