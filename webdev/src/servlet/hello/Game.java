package servlet.hello;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Game extends HttpServlet {
	private static final long serialVersionUID = 1L;      
	private static final Logger logger = LoggerFactory.getLogger(Game.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		doProcess(request, response, "/WEB-INF/views/game_form.jsp");
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int you =Integer.parseInt(request.getParameter("you"));
		int com = (int)(Math.random()*3+1);
		
		String result = null;
		String[] caption = {"가위","바위","보"};
		
		if(you==com){
			result = "비겼습니다";
		}
		else if((you==1 && com==3) ||(you==2 && com==1)||(you==3 && com==2)){
			result = "당신의 승리";
		}else{
			result = "당신의 패배";
		}
		
		request.setAttribute("you", caption[you-1]);
		request.setAttribute("com", caption[com-1]);
		request.setAttribute("result", result);
		request.setAttribute("youimg", "/webdev/jsp2/img/"+you+".jpg");
		request.setAttribute("comimg", "/webdev/jsp2/img/"+com+".jpg");
		doProcess(request, response, "/WEB-INF/views/game_process.jsp");
	}

	private void doProcess(HttpServletRequest req, HttpServletResponse resp, String uri) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher(uri);
		dispatcher.forward(req, resp);
	}
}
