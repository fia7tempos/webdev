<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
	Map<String, Object> map1 = new HashMap<String, Object>();
	map1.put("no",108);
	map1.put("title","날아라 병아리");
	map1.put("name","신해철");
	map1.put("count",100);
	list.add(map1);
	Map<String, Object> map2 = new HashMap<String, Object>();
	map2.put("no",107);
	map2.put("title","그대에게");
	map2.put("name","무한궤도");
	map2.put("count",200);
	list.add(map2);
	Map<String, Object> map3 = new HashMap<String, Object>();
	map3.put("no",105);
	map3.put("title","기도");
	map3.put("name","노댄스");
	map3.put("count",300);
	list.add(map3);
	Map<String, Object> map4 = new HashMap<String, Object>();
	map4.put("no",103);
	map4.put("title","인형의기사");
	map4.put("name","넥스트");
	map4.put("count",300);
	list.add(map4);
	Map<String, Object> map5 = new HashMap<String, Object>();
	map5.put("no",101);
	map5.put("title","난 알아요");
	map5.put("name","서태지");
	map5.put("count",300);
	list.add(map5);
	// 현재 글번호 마지막은 108번
	long recordCount = 83;	// 게시물 총 수
	long pageSize = 5;		// 페이지당 게시물 출력 수
	long pg = 2;			// 현재 2페이지
	
	request.setAttribute("recordCount", recordCount);
	request.setAttribute("pageSize", pageSize);
	request.setAttribute("pg", pg);
%>
<c:set var="list" value="<%=list %>" />
<table border="1">
	<caption>게시판 리스트</caption>
<tr>
	<th colspan="4" align="right">
	총레코드수:${recordCount}
	</th>
</tr>
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>이름</th>
	<th>조회수</th>
</tr>
<c:set var="lastRecord" value="${recordCount-((pg-1)*pageSize)}"/>
<c:set var="i" value="${recordCount-((pg-1)*pageSize)}"/>
<c:forEach items="${list}" var="vo" begin="0" end="5" step="1" varStatus="ind">
<tr>
	<td>${vo.no}, ${i}</td>
	<td>${vo.title}</td>
	<td>${vo.name}</td>
	<td>${vo.count}</td>
	<c:set var="i" value="${i-1}"/>
</tr>
</c:forEach>
<tr>
	<td colspan="4" align="right">
	<input type="button" value="이전" onclick=""/>
	<input type="button" value="다음" onclick=""/>
	</td>
</tr>
</table>
</body>
</html>