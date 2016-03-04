<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="game_process.jsp" method="post">
<select name="input">
	<option value="1">가위</option>
	<option value="2">바위</option>
	<option value="3">보</option>
</select>
	<input type="submit" value="선택" />
	<input type="reset" value="초기화" />
</form>
</body>
</html>