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
	int length = Integer.parseInt(request.getParameter("length"));
	out.println("13인의아해가도로로질주하오.<br/>(길은막다른골목이적당하오.)<br/><br/>제1의아해가무섭다고그리오.<br/>");
	for(int i=2;i<=length;i++){
		out.println("제"+i+"의아해도무섭다고그리오.<br/>");
	}
	out.println(length+"인의아해는무서운아해와무서워하는아해와그렇게뿐이모였소. (다른사정은없는것이차라리나았소) <br/>");
%>
그중에1인의아해가무서운아해라도좋소.<br/>
그중에2인의아해가무서운아해라도좋소.<br/>
그중에2인의아해가무서워하는아해라도좋소.<br/>
그중에1인의아해가무서워하는아해라도좋소.<br/><br/>

(길은뚫린골목이라도적당하오.)<br/>
<%=length %>인의아해가도로로질주하지아니하여도좋소.<br/>
</body>
</html>