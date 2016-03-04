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
	long no = Long.parseLong(request.getParameter("no"));	
%>
<form action="delete_action.jsp?no=<%=no%>" method="post">
<table border="1">
	<caption>게시물 글수정</caption>
<tr>
	<th>글번호</th>
	<td><%=no %><input type="hidden" name="title" value="<%=no%>" /></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type="password" name="pwd" /><br/>
	*글 작성시 입력했던 비밀번호를 재입력하세요</td>
</tr>
<tr>
	<td colspan="2"><input type="submit" value="삭제완료" /></td>
</tr>
</table>
</form>
</body>
</html>
