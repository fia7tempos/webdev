<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title he32re</title>
</head>
<body>
<%-- p115 2-8을 작성. action은 info_process.jsp --%>
<form action="info_process2.jsp" method="post">
	<h2>개인 정보 입력</h2>
이름: 	<input type="text" name="user_name" id="user_name"/><br/>
아이디: <input type="text" id="user_id" name="user_id"/><br/>
패스워드: <input type="password" id="user_password" name="user_password"/><br/>
성별: 남 <input type="radio" name="gender" value="남">
여 <input type="radio" name="gender" value="여"><br/>
메일 수신 여부: 공지 메일 <input type="checkbox" name="notice" value="notice"/>
광고 메일 <input type="checkbox" name="ad" value="ad"/>
배송 확인 메일 <input type="checkbox" name="ship" value="ship"/><br/><br/>
직업: <select name="job" id="job">
<option>회사원</option>
<option>학생</option>
<option>기타</option>
</select><br/><br/>

<input type="reset" value="취소"/>
<input type="submit" value="확인"/>
</form>


</body>
</html>