<%@page import="library.cookie.Cooker"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String checkid = request.getParameter("checkid"); //on,null
		// Cookie[] cookies = request.getCookies(); -> Cooker 클래스 이용
		// Cookie cookie = new Cookie("user_id",URLEncoder.encode(user_id,"UTF-8")); 도 가능

		String user_name = null;
		user_pw = DigestUtils.sha512Hex(user_pw);

		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		StringBuffer sql = new StringBuffer();
		sql.append(" select user_id, user_name");
		sql.append(" from member");
		sql.append(" where user_id=? and user_pw=?");

		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
			ps = conn.prepareStatement(sql.toString());
			ps.setString(1, user_id);
			ps.setString(2, user_pw);
			rs = ps.executeQuery();
			if (rs.next()) {//로그인 성공시
				user_name = rs.getString("user_name");
				session.setAttribute("user_id", user_id);
				session.setAttribute("user_name", user_name);
				if (checkid != null) {
					//아이디 저장 체크되어있으면 저장
					response.addCookie(Cooker.createCookie("user_id", user_id,(60*60*24*30)));
				} else {
					//아니면 저장된 아이디 삭제	
					response.addCookie(Cooker.createCookie("user_id", user_id,0));									
				}

			} else {
				out.println("<script>");
				out.println("alert('id 혹은 pw가 틀립니다.');");
				out.println("location.href='login.jsp';");
				out.println("</script>");
				return;
			}
		} catch (Exception e) {
			e.printStackTrace();
			out.println("<script>");
			out.println("alert('시스템에 문제가 있습니다. 로그인으로 되돌아갑니다.');");
			out.println("//location.href='login.jsp';");
			out.println("</script>");
			return; //그래도 finally는 실행
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (Exception e) {
				}
			if (ps != null)
				try {
					ps.close();
				} catch (Exception e) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (Exception e) {
				}
		}
		response.sendRedirect("main.jsp");
	%>


</body>
</html>