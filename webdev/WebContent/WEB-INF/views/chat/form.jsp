<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script type="text/javascript">
var chat_array = new Array();
function say(user_name,input_chat){
	var chat_message =  {'user_name':user_name.value,
						'input_chat':input_chat.value,
						'date':Date() }
	add_chat(chat_message);
}

function add_chat(chat_message){
	chat_array.push(chat_message);
}

function refresh(item,index){
	
	document.getElementById("chat_log").innerHTML = item.input_chat+'<br/>';
	document.getElementById("member_list").innerHTML = item.user_name+'<br/>';
	
}
</script>
</head>
<body>
<form id="chat_form" action="/Game" method="post" role="form">
<div class="row">
	<div class="col-xs-2">접속자 목록</div>
	<div class="col-xs-10">채팅창</div>
</div>
<div class="row">
	<div class="col-xs-2" id="member_list"></div>
	<div class="col-xs-10" id="chat_log"></div>
</div>
<div class="row">
	<div class="col-xs-2" id="member_list"><input type="text" class="form-control" name="user_name" id="user_name"/></div>
	<div class="col-xs-8" id="chat_log"><input type="text" class="form-control" name="input_chat" id="input_chat"/></div>
	<div class="col-xs-2"><input type="button" class="btn" id="btn_say" value="입력" onclick="say(user_name,input_chat);"></div>
</div>
</form>
</body>
</html>