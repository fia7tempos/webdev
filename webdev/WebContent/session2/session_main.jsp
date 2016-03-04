<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="session_form.jsp">세션 추가</a>
<a href="session_remove_id.jsp">아이디 삭제</a>
<a href="session_remove_name.jsp">이름 삭제</a>
<a href="session_remove_level.jsp">레벨 삭제</a>
<a href="session_invalidate.jsp">전체 삭제</a>
<hr/>
<%
	if(session.getAttribute("user_id")!=null){
		out.println("user_id : "+session.getAttribute("user_id"));
	}else	{
		out.println("user_id는 세션에 저장되어있지 않습니다.");
	}
%>
<br/>
<%
	if(session.getAttribute("user_name")!=null){
		out.println("user_name : "+session.getAttribute("user_name"));
	}else	{
		out.println("user_name은 세션에 저장되어있지 않습니다.");
	}
%>
<br/>
<%
	if(session.getAttribute("user_level")!=null){
		out.println("level : "+session.getAttribute("user_level"));
	}else	{
		out.println("level은 세션에 저장되어있지 않습니다.");
	}
%>
<br/>
</body>
</html>