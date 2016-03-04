<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="bbs_post.jsp" method="post">
<h2>글쓰기</h2>
<table>
<tr>
<td>
이름 : <input type="text" size="10" name="name" /><br/>
</td><td>
제목 : <input type="text" size="10" name="title" /><br/>
</td>
</tr>
<tr>
<td colspan="2">
<textarea rows="5" cols="40" name="content"></textarea><br/>
</td>
</tr>
<tr>
<td>
<input type="submit" value="저장"/>
</td>
</tr>
</table>
</form>	
</body>
</html>