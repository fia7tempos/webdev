<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body style="width:20%; margin:auto ; text-align: center">
	<%	
		int you = -1;
		int com = (int)(Math.random()*3+1);	
		try{
			you = Integer.parseInt(request.getParameter("input"));
		
	%>
<table border="1">
<tr>
	<th>당신</th>
	<td rowspan="2"> VS</td>
	<th>컴퓨터</th>
</tr>
<tr>
	<td><img src="<%=palseItem(you) %>"/></td>
	<td><img src="<%=palseItem(com) %>"/>
	</td>
</tr>
</table>
<h2><%=compareItem(you,com)%></h2>

<%
		} catch(NumberFormatException nfe){ %>
		먼저 가위,바위,보 중 선택하셔야 합니다.
		<input type="button" value="선택 폼으로 이동" onclick="location.href='game_form.jsp'">			
		<%}
%>
</body>
</html>
<%!
String palseItem(int input){
	String[] item = {"img/1.jpg","img/2.jpg","img/3.jpg"}; 
	return 	item[(input-1)];
}
String compareItem(int input,int com)
{
	if(input==com) return "비겼습니다.";
	else if((input==1&&com==2)||(input==2&&com==3)||(input==3&&com==1)) return "당신이 졌습니다.";
	else if((input==1&&com==3)||(input==2&&com==1)||(input==3&&com==2)) return "당신이 이겼습니다.";
	return null;
}
%>