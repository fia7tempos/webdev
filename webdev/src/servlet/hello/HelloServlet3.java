package servlet.hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet3 extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 수행중");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UTF-8\">");
		out.println("<title>hello3</title>");
		out.println("<style type=\"text/css\">");
		out.println("body {");
		out.println("	margin: 0px;");
		out.println("}");
		out.println("</style>");
		out.println("</head>");
		out.println("<body>");
		out.println("<form action=\"hello3\" method=\"post\">");
		out.println("<img src=\"css/img/whoami.png\" /><br />");
		out.println("이름 : <input type=\"text\" name=\"name\" autofocus=\"autofocus\" />");
		out.println("<input type=\"submit\" value=\"say\">");
		out.println("</form>");
		out.println("</body>");
		out.println("</html>");
		out.close();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 수행중");
		response.setContentType("text/html;charset=UTF-8");
		String name = request.getParameter("name");
		PrintWriter out = response.getWriter();		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"UTF-8\">");
		out.println("<title>Insert title here</title>");
		out.println("<style type=\"text/css\">");
		out.println("body {");
		out.println("	margin: 0px;");
		out.println("}");
		out.println(".whoani{");
		out.println("	position: absolute;");
		out.println("	z-index: 0;");
		out.println("}");
		out.println("");
		out.println("#iam{");
		out.println("	position: absolute; ");
		out.println("	z-index: 99;");
		out.println("	top:100px;");
		out.println("	left:655px;");
		out.println("	font-size: 1.8em;");
		out.println("	font-weight: bold;");
		out.println("	width: 130px;");
		out.println("}");
		out.println("</style>");
		out.println("</head>");
		out.println("<body>");
		out.println("<img src=\"css/img/nopogi.png\" class=\"whoami\"/>");
		out.println("<div id=\"iam\">그래, 난 "+name+".</div>");
		out.println("</body>");
		out.println("</html>");
	}

}
