<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- jsp comment
/* */
//
--%>
	<!-- scriptlet -->
<%
	int sum = 0;
	for(int i=1;i <= 1000; i++){
		if(i%3==0) sum += i;
	}
	out.println("1~1000까지 3의 배수 합은 : "+sum);
	
	sum = 0;
	for(int i=0;i <= 1000; i+=3){
		sum += i;
	}
	out.println("<br />1~1000까지 3의 배수 합은 : "+sum);
	
	sum = 0;
	for(int i=3;i <= 1000; i+=3){
		sum+=i;
		out.println(i==3?i:"+" +i);
	}
	out.println("1~1000까지 3의 배수 합은 : "+sum);
%>

<%= "=" + sum %>
</body>
</html>