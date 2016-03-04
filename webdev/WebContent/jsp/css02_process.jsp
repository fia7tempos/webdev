<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
	String user_name = request.getParameter("user_name");
	String user_gender = request.getParameter("user_gender");
	
	String[] user_hobby = request.getParameterValues("user_hobby");
	String[] user_inter = request.getParameterValues("user_inter");
	
	String user_birth = request.getParameter("user_birth");
	String user_say = request.getParameter("user_say");
%>

아이디: <%=user_id %><br/>
비밀번호: <%=user_pw %><br/>
이름: <%=user_name %><br/>
성별: <% if(user_gender.equals("1")) out.println("남"); 
else if(user_gender.equals("2")) out.println("여");%><br/>
취미: <%
for(String h :user_hobby){
	out.println(h);
}

%><br/>
관심분야: <%
for(String h :user_inter){
	out.println(h);
}
%><br/>
생일: <%=user_birth %><br/>
하고싶은말: <%=user_say %><br/>
	

</body>
</html>