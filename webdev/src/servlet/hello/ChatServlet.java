package servlet.hello;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ChatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response,"WEB-INF/views/chat/form.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response,"WEB-INF/views/chat/action.jsp");
	}
	
	private void doProcess(HttpServletRequest req, HttpServletResponse resp, String uri) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher(uri);
		dispatcher.forward(req, resp);		
	}

}
