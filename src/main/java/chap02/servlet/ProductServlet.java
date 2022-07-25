package chap02.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datamodel.Product;

@WebServlet("/product")
public class ProductServlet extends HttpServlet{
	
	private static Map<String, Product> products = new HashMap<>();
	
	static {
		products.put("handfan", new Product("부채", 1000, 0.2, "리빙") );
		products.put("fan", new Product("선풍기", 33000, 5.3,"가전제품"));
		products.put("minifan", new Product("미니 선풍기", 20000, 0.8,"아이디어 상품"));
		products.put("aircon", new Product("에어컨", 180000,28.9,"가전제품"));
;	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String productName = req.getParameter("name");
		
		// 파라미터로 받은 상품명을 통해 상품의 모든 정보들을 얻을 수 있다
		
		// 상풍명을 통해 얻은 데이터를 어티르뷰드에 실어서 전달할 수 있다
		req.setAttribute("product1", products.get(productName));
		//System.out.println(products);
		// forward : webapp 밑의 경로만 입력하면 된다   /  프로젝트 내부 경로 사용
		req.getRequestDispatcher("/attribute/view/product_detail.jsp").forward(req, resp);
	}
}
