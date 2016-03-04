<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	margin: 0px;	
}         
.whoani{     
	position: absolute; 
	z-index: 0;
}
#iam{            
	position: absolute;
	z-index: 99;        
	top:100px;         
	left:660px;     
	font-size: 1.8em;   
	font-weight: bold;  
	width: 100px;
}       

</style>
</head>
<body>
<img src="css/img/nopogi.png" class="whoami" />
<div id="iam">${iam}</div>        

</body>
</html>