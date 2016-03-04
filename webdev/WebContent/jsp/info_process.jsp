<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- p115 2-8을 작성. action은 info_process.jsp --%>
<h2>개인 정보 입력</h2><br/>

<%
	String user_name = request.getParameter("user_name");
	String user_id = request.getParameter("user_id");
	String user_password = request.getParameter("user_password");
	String gender = request.getParameter("gender");
	String notice = request.getParameter("notice");	
	notice = checkNull(notice);
	String ad = request.getParameter("ad");
	ad = checkNull(ad);
	String ship = request.getParameter("ship");
	ship = checkNull(ship);
	String job = request.getParameter("job");	
%>
이름: <%=user_name %> <br/>
아이디: <%=user_id %><br/>
암호: <%=user_password %><br/>
성별: <%=gender %><br/>
공지 메일: <%=notice %><br/>
광고 메일: <%=ad %><br/>
배송 확인 메일: <%=ship %><br/>
직업: <%=job %><br/>

</body>
</html>

<%!
	public String checkNull(String s){
		if(s==null) return "받지 않음";
		else return "받음";
	}
%>