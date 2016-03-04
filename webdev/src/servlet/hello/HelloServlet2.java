package servlet.hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet2 extends HttpServlet {
	//private static final long serialVersionUID = 1L; //분산형 서버환경에서 사용

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();		
		out.println("<HTML>");
		out.println("<HEAD><TITLE>Hello Servlet2</TITLE></HEAD>");
		out.println("<BODY><h1>Hello Servlet2, 췛</h1></BODY>");
		out.println("</HTML>");
		out.close();
	}

}
