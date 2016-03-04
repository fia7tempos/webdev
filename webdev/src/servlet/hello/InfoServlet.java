package servlet.hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.write("<!DOCTYPE html>");
		out.write("<html>");
		out.write("<head>");
		out.write("<meta charset=\"UTF-8\">");
		out.write("<title>Insert title here</title>");
		out.write("</head>");
		out.write("<body>");
		out.write("<form action=\"info\" method=\"post\">");
		out.write("	<h2>개인 정보 입력</h2>");
		out.write("이름: 	<input type=\"text\" name=\"user_name\" id=\"user_name\"/><br/>");
		out.write("아이디: <input type=\"text\" id=\"user_id\" name=\"user_id\"/><br/>");
		out.write("패스워드: <input type=\"password\" id=\"user_password\" name=\"user_password\"/><br/>");
		out.write("성별: 남 <input type=\"radio\" name=\"gender\" value=\"남\">");
		out.write("여 <input type=\"radio\" name=\"gender\" value=\"여\"><br/>");
		out.write("메일 수신 여부: 공지 메일 <input type=\"checkbox\" name=\"notice\" value=\"notice\"/>");
		out.write("광고 메일 <input type=\"checkbox\" name=\"ad\" value=\"ad\"/>");
		out.write("배송 확인 메일 <input type=\"checkbox\" name=\"ship\" value=\"ship\"/><br/><br/>");
		out.write("직업: <select name=\"job\" id=\"job\">");
		out.write("<option>회사원</option>");
		out.write("<option>학생</option>");
		out.write("<option>기타</option>");
		out.write("</select><br/><br/>");
		out.write("<input type=\"reset\" value=\"취소\"/>");
		out.write("<input type=\"submit\" value=\"확인\"/>");
		out.write("</form>");
		out.write("</body>");
		out.write("</html>");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.write("<!DOCTYPE html>");
		out.write("<html>");
		out.write("<head>");
		out.write("<meta charset=\"UTF-8\">");
		out.write("<title>Insert title here</title>");
		out.write("</head>");
		out.write("<body>");
		out.write("<h2>개인 정보 입력</h2><br/>");
		out.write("");
		
			String user_name = request.getParameter("user_name");
			String user_id = request.getParameter("user_id");
			String user_password = request.getParameter("user_password");
			String gender = request.getParameter("gender");
			String notice = request.getParameter("notice");
			notice = checkNull(notice);
			String ad = request.getParameter("ad");
			ad = checkNull(ad);
			String ship = request.getParameter("ship");
			ship = checkNull(ship);
			String job = request.getParameter("job");	
		
		out.write("이름: "+user_name+" <br/>");
		out.write("아이디: "+user_id+"<br/>");
		out.write("암호: "+user_password +"<br/>");
		out.write("성별: "+gender+"<br/>");
		out.write("공지 메일: "+notice+"<br/>");
		out.write("광고 메일: "+ad+"<br/>");
		out.write("배송 확인 메일: "+ship+"<br/>");
		out.write("직업: "+job+"<br/>");
		out.write("");
		out.write("</body>");
		out.write("</html>");
		out.write("");
	
	
		out.write("");
	}

	public String checkNull(String s){
		if(s==null) return "받지 않음";
		else return "받음";
	}
}
