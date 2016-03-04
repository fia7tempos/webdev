<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<form action="Game" method="post" align="center">
<h2>
<div class="radio">
<label><input type="radio" name="you" value="1">가위</label>
<label><input type="radio" name="you" value="2">바위</label>
<label><input type="radio" name="you" value="3">보</label>
</div>
</h2>
<input type="submit" class="btn btn-primary"/> 

</form>

</body>
</html>