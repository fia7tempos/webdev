<%@page import="board.model.BoardDAOImpl"%>
<%@page import="board.model.BoardDAO"%>
<%@page import="java.util.List"%>
<%@page import="board.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<f:setLocale value="en_US" />
<%-- <f:setLocale value="ja_JP" /> --%>
<f:bundle basename="i18n/test/board">
<%
	BoardDAO boardDAO = BoardDAOImpl.getInstance();
	List<BoardVO> list = boardDAO.getArticleList();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>게시물 리스트</title>
</head>
<body>
<table border="1">
	<caption>게시물 리스트</caption>
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>이름</th>
	<th>날짜</th>
	<th>조회수</th>
</tr>
<%	for(BoardVO boardVO:list) { %>
<tr>
	<td><%=boardVO.getNo() %></td>		
	<td><a href="article.jsp?no=<%=boardVO.getNo()%>"><%=boardVO.getTitle() %></a></td>		
	<td><%=boardVO.getName() %></td>		
	<td><%=boardVO.getRegdate() %></td>		
	<td><%=boardVO.getReadcount() %></td>		
</tr>		
<%} %>


</table>
<input type="button" value="글쓰기" onclick="location.href='insert.jsp'"/>

</body>
</html>
</f:bundle>
