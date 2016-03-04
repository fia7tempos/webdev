<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function pre_month(year,month){
		if(month.value==1){
			year.value--;
			month.value=12;
		}else month.value--;
		document.formCal.submit();
	}
	function next_month(year,month){
		if(month.value==12){
			year.value++;
			month.value=1;
		}else month.value++;
		document.formCal.submit();
	}

</script>

</head>
<body>
<form name="formCal" action="cal.jsp" method="post">
	<%	
	int year,month,week,endDay;
	Calendar cal = Calendar.getInstance();
	try{ //submit() 이후 get request를 받아왔을때
		year = Integer.parseInt(request.getParameter("year"));
		month = Integer.parseInt(request.getParameter("month"));
		cal.set(year, month-1, 1);
	}catch(Exception e){ //request가 없을때 - 처음접속
		year = cal.get(Calendar.YEAR);
		month = cal.get(Calendar.MONTH) +1;
		cal.set(year, month-1, 1);
	}
		week = cal.get(Calendar.DAY_OF_WEEK);
		endDay = cal.getActualMaximum(Calendar.DATE);
	%>
	<input type="hidden" name="year" id="hdyear" value=<%=year %>>
	<input type="hidden" name="month" id="hdmonth" value=<%=month %>>
<table border="1" style="text-align: center">
	<caption>
	
	</caption>
	<tr>
		<td colspan="7"><input type="button" name="left" value="◀" onclick="pre_month(year,month)">
		<%=year%>년<%=month%>월
		<input type="button" name="right" value="▶" onclick="next_month(year,month)"></td>
	</tr>
	
	
	<tr>
		<th>일</th>
		<th>월</th>
		<th>화</th>
		<th>수</th>
		<th>목</th>
		<th>금</th>
		<th>토</th>
	</tr>
	<tr>
		<%
			for (int sp = 1; sp < week; sp++) {
				out.println("<td></td>");
			}

			for (int d = 1, w = week; d <= endDay; d++, w++) {					
				if(Calendar.SUNDAY==getWeekday(cal, year, month, d)){					
					out.println("<td style=\"color:red;\">" + d + "</td>");	
				}else if(Calendar.SATURDAY==getWeekday(cal, year, month, d)){
					out.println("<td style=\"color:blue;\">" + d + "</td>");
				}
				else out.println("<td>" + d + "</td>");
				if (w % 7 == 0)
					out.println("</tr><tr>");
			}
		%>
	</tr>
</table>
</form>
</body>
</html>

<%!
public int getWeekday(Calendar cal,int year,int month,int day){
	int buYear = cal.get(Calendar.YEAR);
	int buMonth = cal.get(Calendar.MONTH);
	int buDay = cal.get(Calendar.DAY_OF_MONTH);
	
	cal.set(year,month-1,day);
	int weekday = cal.get(Calendar.DAY_OF_WEEK);
	cal.set(buYear,buMonth,buDay);
	return weekday; 
}
%>