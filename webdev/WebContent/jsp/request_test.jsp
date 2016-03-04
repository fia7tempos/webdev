<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- request = HttpServletRequest -->
getRemoteAddr : <%=request.getRemoteAddr()%><br/> <!-- 들어온 사람의 IP주소 IPv6-->
getCharacterEncoding : <%=request.getCharacterEncoding()%><br/> <!-- 현재 문자 인코딩-->
getProtocol : <%=request.getProtocol()%><br/> 
getServerPort : <%=request.getServerPort()%><br/>
getServerName : <%=request.getServerName()%><br/>
getMethod : <%=request.getMethod()%><br/>
getContentType : <%=request.getContentType()%><br/>
getContentLength : <%=request.getContentLength()%><br/>
getContextPath : <%=request.getContextPath()%><br/><!--  -->
getRequestURI : <%=request.getRequestURI()%><br/><!-- 서버내 경로 -->
getRequestURL : <%=request.getRequestURL()%><br/><!-- 전체경로 -->
action : <%=request.getRequestURI().substring(request.getContextPath().length(), request.getRequestURI().length()) %>
</body>
</html>

