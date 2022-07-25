package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/redirect/controller")
public class RedirectServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("Redirect 서블릿에 왔다감.");
		System.out.println("name : " + req.getParameter("name") + ", age : "+req.getParameter("age"));
		// resp(서버의 응답)에는 html과 redirect가 있고 html이 오면 화면에 그려주고 redirect가오면 새로운 요청을 보낼 것을 응답한다
		// redirect : 클라이언트에게 새로운 요청을 보낼 것을 응답한다
		resp.sendRedirect("../forward/page/page1.jsp"); // <<이 주소를 다시 입력하는 것이기 때문에 최초 입력했던 이름과 나이는 null로 표시된다
	}

}
