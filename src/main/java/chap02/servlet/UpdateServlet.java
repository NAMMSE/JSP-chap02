package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/attribute/update")
public class UpdateServlet extends HttpServlet{
	
//	String attrName;
//	
//	public UpdateServlet(String attrName) {
//		this.attrName = attrName;
//	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String updateValue = req.getParameter("value");
		String key = req.getParameter("key");
		System.out.println("키 값 : "+key);
		System.out.println("수정 값 : "+updateValue);
		
		HttpSession session = req.getSession();
				
		session.setAttribute(key, updateValue);
		resp.sendRedirect("/chap02/session/index.jsp");
	}
}
