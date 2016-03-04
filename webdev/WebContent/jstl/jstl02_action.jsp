<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

${band}<br/>
<%-- = <%=request.getAttribute("band")%><br/> --%>
<hr/>
${sessionScope.song}<br/>
<%-- = <%=session.getAttribute("song")%><br/> --%>
</body>
</html>