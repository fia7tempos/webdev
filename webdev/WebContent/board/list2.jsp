<%@page import="board.model.BoardDAOImpl"%>
<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardVO"%>
<%@page import="java.util.List"%>
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
<title><f:message key="list.action" /></title>
</head>
<body>
<table border="1">
	<caption><f:message key="list.action" /></caption>
<tr>
	<th><f:message key="list.no" /></th>
	<th><f:message key="list.title" /></th>
	<th><f:message key="list.name" /></th>
	<th><f:message key="list.regdate" /></th>
	<th><f:message key="list.readCount" /></th>
</tr>
<%		for(BoardVO boardVO:list) { %>
<tr>
	<td><%=boardVO.getNo() %></td>		
	<td><a href="article.jsp?no=<%=boardVO.getNo() %>"><%=boardVO.getTitle() %></a></td>		
	<td><%=boardVO.getName() %></td>		
	<td><%=boardVO.getRegdate() %></td>		
	<td><%=boardVO.getReadcount() %></td>		
</tr>		
<%		} %>
</table>
<input type="button" value="<f:message key="list.write" />" onclick="location.href='insert.jsp'" />
</body>
</html>
</f:bundle>