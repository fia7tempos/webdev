package servlet.hello;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class HelloServlet4 extends HttpServlet {
	private static final Logger logger = LoggerFactory.getLogger(HelloServlet4.class);
	//front controller
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req,resp,"/WEB-INF/views/form.jsp");
	}
	
	private void doProcess(HttpServletRequest req, HttpServletResponse resp, String uri) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher(uri);
		dispatcher.forward(req, resp);		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		logger.info("name : "+name);
		String iam = "그래, 난 "+name;
		req.setAttribute("iam", iam);
		
		doProcess(req, resp, "/WEB-INF/views/process.jsp");		
	}
}
