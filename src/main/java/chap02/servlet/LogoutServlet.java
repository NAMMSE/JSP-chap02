package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/attribute/logout")
public class LogoutServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String logout = req.getParameter("logout");
		System.out.println("로그아웃 버튼 값 : " + logout);
		
		
		HttpSession session = req.getSession();
		if("logout".equals(logout)) {
			session.setAttribute("login", false);
		}else {
			session.setAttribute("login", true);
		}
		
		req.getRequestDispatcher("/attribute/view/login_result_page.jsp").forward(req, resp); // 서블렛에서 로그인여부 처리 후 html로 작성위해 포워딩 하여 로그인 확인페이지로 보낸다
	
		
	}
	
	// 강사님 코드
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		session.setAttribute("login", false);
		
		resp.sendRedirect("/chap02/attribute/login.jsp");
	}
}
