<%@page import="board.model.BoardDAO"%>
<%@page import="board.model.BoardDAOImpl"%>
<%@page import="board.model.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<f:setLocale value="en_US" />
<%-- <f:setLocale value="ja_JP" /> --%>
<f:bundle basename="i18n/test/board">
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	long no = Long.parseLong(request.getParameter("no"));
	BoardDAO boardDAO = BoardDAOImpl.getInstance();
	BoardVO boardVO = boardDAO.getArticle(no);
%>
<table border="1">
	<caption><f:message key="article.action" /></caption>
<tr>
	<th><f:message key="list.no" /></th>
	<td><%=boardVO.getNo() %></td>
</tr>
<tr>
	<th><f:message key="list.title" /></th>
	<td><%=boardVO.getTitle() %></td>
</tr>
<tr>
	<th><f:message key="list.name" /></th>
	<td><%=boardVO.getName() %></td>
</tr>
<tr>
	<th><f:message key="article.content" /></th>
	<td><%=boardVO.getContent() %></td>
</tr>
<tr>
	<th><f:message key="list.regdate" /></th>
	<td><%=boardVO.getRegdate() %></td>
</tr>
<tr>
	<th><f:message key="list.readCount" /></th>
	<td><%=boardVO.getReadcount() %></td>
</tr>
</table><br/>
<input type="button" value="<f:message key="article.list" />" onclick="location.href='list.jsp'" />
<input type="button" value="<f:message key="article.insert" />" onclick="location.href='update.jsp?no=<%=no %>'" />
<input type="button" value="<f:message key="article.delete" />" onclick="location.href='delete.jsp?no=<%=no %>'" />
</body>
</html>
</f:bundle>