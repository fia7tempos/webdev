<%@page import="board.model.BoardDAOImpl"%>
<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardVO"%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	long no = Long.parseLong(request.getParameter("no"));	
	String pwd = request.getParameter("pwd");
	pwd = DigestUtils.sha512Hex(pwd);
	
	BoardDAO boardDAO = BoardDAOImpl.getInstance();
	boolean result = boardDAO.deleteArticle(no,pwd);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
<% if(result) { %>
	alert('글 삭제 성공');
	location.href='list.jsp';	
<% } else { %>
	alert('비밀번호가 틀립니당.\n재입력하세요');
	location.href='javascript:history.back();';
<% } %>
</script>
</body>
</html>
