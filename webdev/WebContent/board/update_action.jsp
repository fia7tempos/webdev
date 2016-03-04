<%@page import="board.model.BoardDAOImpl"%>
<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="boardVO" class="board.model.BoardVO"></jsp:useBean>
    <jsp:setProperty property="*" name="boardVO"/>
<%	
	BoardDAO boardDAO = BoardDAOImpl.getInstance();
	boolean result = boardDAO.updateArticle(boardVO);
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
	alert('글 수정 성공');
	location.href='article.jsp?no=<%=boardVO.getNo()%>';	
<% } else { %>
	alert('글 등록 실패');
	location.href='javascript:history.back();';
<% } %>
</script>
</body>
</html>
