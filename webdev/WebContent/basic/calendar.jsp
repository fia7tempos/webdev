<%@page import="java.util.Calendar"%>
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
	int year = 2016, month= 2;
	Calendar cal = Calendar.getInstance();
	cal.set(year, month-1,1);
	int week = cal.get(Calendar.DAY_OF_WEEK);
	int endDay = cal.getActualMaximum(Calendar.DATE);
	
	
	//조건, 10일이 넘어가면 두자리 , 요일간 공백 한칸
	
// 	System.out.println(year +" 년 " +month+" 월");
// 	System.out.println("--------------------");
// 	System.out.println("일 월 화 수 목 금 토");
// 	System.out.println("--------------------");

%>
	<table border="1">
		<caption><%=year %>년 <%=month %>월 </caption>
		<tr>
			<td bgcolor=#ffaaaa>일</td>
			<td bgcolor=#aaaaaa>월</td>
			<td bgcolor=#aaaaaa>화</td>
			<td bgcolor=#aaaaaa>수</td>
			<td bgcolor=#aaaaaa>목</td>
			<td bgcolor=#aaaaaa>금</td>
			<td bgcolor=#aaaaFF>토</td>
		</tr>
		<tr>
<%
	for(int sp=1;sp< week;sp++){
		out.print("<td></td>");
	}
	for(int d=1,w=week; d<=endDay;d++,w++)
	{
		out.print("<td>"+d+"</td>");
		if(w%7==0) out.println("</tr><tr>"); // 1이 일요일 7이 토요일, 토요일마다 줄바꿈
	}
%>
		</tr>
	</table>
</body>
</html>