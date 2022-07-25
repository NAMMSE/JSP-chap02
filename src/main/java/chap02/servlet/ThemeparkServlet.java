package chap02.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form/themepark")
public class ThemeparkServlet extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("EUC-KR");
		String[] all = req.getParameterValues("all");
		String[] night = req.getParameterValues("night");
		int totalMoney =0;
		
		for(int i=0;i<all.length;i++) {
			if(all[i]!=null && i==0) {
				System.out.println("주간권 성인 인원 : "+ all[i]);
				System.out.println("주간권 성인 요금 : "+ Integer.parseInt(all[i])*45000);
				totalMoney += Integer.parseInt(all[i])*45000;
			}else if(all[i]!=null && i==1) {
				System.out.println("주간권 청소년 인원 : "+ all[i]);
				System.out.println("주간권 청소년 요금 : "+ Integer.parseInt(all[i])*38000);
				totalMoney += Integer.parseInt(all[i])*38000;
			}else if(all[i]!=null && i==2) {
				System.out.println("주간권 어린이 인원 : "+ all[i]);
				System.out.println("주간권 어린이 요금 : "+ Integer.parseInt(all[i])*35000);
				totalMoney += Integer.parseInt(all[i])*35000;
			}
		}
		System.out.println("총요금 : "+totalMoney);
	
		PrintWriter out = resp.getWriter();
		
		out.print("<html><head><title>예매 확인</title><meta charset=\"EUC-KR\">");
		out.print("<style>");
		out.print("td {text-align:center; width:250px; height:100px; background-color:teal; font-size:15px;}");
		out.print("</style></head><body><h3>예매 확인</h3>");
		out.print("<table border=\"2\"><tr>");
		out.print("<th>");
		out.print(String.format("구분"));
		out.print("</th><th>");
		out.print(String.format("종일권"));
		out.print("</th><th>");
		out.print(String.format("야간권"));
		out.print("</th>");
		out.print("</tr>");
		out.print("<tr><td>");
		out.print(String.format("성인"));
		out.print("</td>");
		out.print("<td>");
		out.print(String.format("인원 : %s\n요금 : %d",all[0], Integer.parseInt(all[0])*45000));
		out.print("</td>");


		out.print("<td>");
		out.print(String.format("인원 : %s\n요금 : %d",night[0], Integer.parseInt(night[0])*36000));
		out.print("</td>");

		out.print("</tr>");
		out.print("<tr><td>");
		out.print(String.format("청소년"));
		out.print("</td>");

		out.print("<td>");
		out.print(String.format("인원 : %s\n요금 : %d",all[1], Integer.parseInt(all[1])*38000));
		out.print("</td>");

		out.print("<td>");
		out.print(String.format("인원 : %s\n요금 : %d",night[1], Integer.parseInt(night[1])*33000));
		out.print("</td>");

		out.print("</tr>");
		out.print("<tr>");
		out.print("<td>");
		out.print(String.format("어린이"));
		out.print("</td>");

		out.print("<td>");
		out.print(String.format("인원 : %s\n요금 : %d",all[2], Integer.parseInt(all[2])*35000));
		out.print("</td>");


		out.print("<td>");
		out.print(String.format("인원 : %s\n요금 : %d",night[2], Integer.parseInt(night[2])*31000));
		out.print("</td>");

		out.print("</tr>");
		out.print("<tr><td>");
		out.print(String.format("총요금"));
		out.print("</td><td colspan=\"2\" style=\"text-align:\"center\";\">");
		out.print(String.format("%d",totalMoney));
		out.print("</td></tr>");
		out.print("</table></body></html>");
	}
	
	
	
	
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		super.service(arg0, arg1);
	}
}
