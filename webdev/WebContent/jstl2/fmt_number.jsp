<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<f:setLocale value="ja_JP" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<f:formatNumber value="1234567890" /><br/>
<f:formatNumber value="1234567890" type="currency" /><br/>
<f:formatNumber value="1234567890" pattern="####,####,####,####" /><br/>
<f:formatNumber value="0.25" />
<f:formatNumber value="0.25" type="percent" />
</body>
</html>
