<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function valid(){	
	if(document.getElementById('number1').value === ''){
		alert("number1 값을 입력");
		document.getElementById('number1').focus();
		return;
	}
	if(document.getElementById('number2').value === ''){
		alert("number2 값을 입력");
		document.getElementById('number2').focus();
		return;
	}
	document.myForm.submit();
}
</script>
</head>
<body>
<form action="add_process.jsp" name="myForm" method="post">
첫 번째 수: <input type="number" id="number1" name="number1" /><br/>
두 번째 수: <input type="number" id="number2" name="number2" /><br/>
<input type="button"  value="더하기" onclick="valid()"/>
</form>

</body>
</html>