package session.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SessionMain extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();

		out.println("<!DOCTYPE html>");
		out.println("		<html>");
		out.println("		<head>");
		out.println("		<meta charset=\"UTF-8\">");
		out.println("		<title>Insert title here</title>");
		out.println("		</head>");
		out.println("		<body>");
		out.println("		<a href=\"session_add.jsp\">세션 추가</a>");
		out.println("		<hr/>");

		if (session.getAttribute("user_id") != null) {
			out.println("user_id : " + session.getAttribute("user_id"));
		} else {
			out.println("user_id는 세션에 저장되어있지 않습니다.");
		}

		out.println("		<br/>");

		if (session.getAttribute("level") != null) {
			out.println("level : " + session.getAttribute("level"));
		} else {
			out.println("level은 세션에 저장되어있지 않습니다.<br/>");
		}

		if (session.getAttribute("human") != null) {
			out.println(session.getAttribute("human"));
		} else {
			out.println("human 항목은 세션에 저장되어있지 않습니다.");
		}

		out.println("		</body>");
		out.println("		</html>");

	}
}
