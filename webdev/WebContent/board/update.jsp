<%@page import="board.model.BoardVO"%>
<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardDAOImpl"%>
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
	long no = Integer.parseInt(request.getParameter("no"));
	BoardDAO boardDAO = BoardDAOImpl.getInstance();
	BoardVO boardVO = boardDAO.getArticle(no);
	
%>
<form action="update_action.jsp?no=<%=no%>" method="post">
<table border="1">
	<caption>게시물 글수정</caption>
<tr>
	<th>글번호</th>
	<td><%=boardVO.getNo() %><input type="hidden" name="no" value="<%=boardVO.getNo()%>" /></td>
</tr>
<tr>
	<th>제목</th>
	<td><input type="text" name="title" value="<%=boardVO.getTitle()%>" /></td>
</tr>
<tr>
	<th>작성자</th>
	<td><input type="text" name="name" value="<%=boardVO.getName()%>" /></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type="password" name="pwd" /><br/>
	*글 작성시 입력했던 비밀번호를 재입력하세요</td>
</tr>
<tr>
	<th>내용</th>
	<td><textarea name="content" cols="30" rows="5" ><%=boardVO.getContent() %></textarea></td>
</tr>
<tr>
	<td colspan="2"><input type="submit" value="수정완료" /></td>
</tr>
</table>
</form>
</body>
</html>
