<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- <f:setLocale value="en_US" /> --%>
<f:setLocale value="ja_JP" />
<f:bundle basename="i18n/test/lang">
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<f:message key="name" /> : <input type="text" name="name" /><br/>
<hr/>
<f:message key="guest" var="guest" />
<h1><f:message key="greeting" >
		<f:param value="${guest}" />
	</f:message></h1>
</body>
</html>
</f:bundle>