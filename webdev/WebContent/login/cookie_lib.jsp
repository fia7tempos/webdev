<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%!
public String getCookieValue(String cookieName,HttpServletRequest request) throws Exception{
	String return_value = "";	
	Cookie[] cookies = request.getCookies(); //request가 내장객체
	for(Cookie c:cookies){
		if(c.getName().equals("remember_id")) {
			return_value = c.getValue();	
		}
	}
	return return_value;
}
%>