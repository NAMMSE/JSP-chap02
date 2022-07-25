<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 서블렛 역할을하는 jsp / 자바만 작성하고 포워딩한다 -->

<%
	String key = request.getParameter("key");
	String value = request.getParameter("value");
	
	if(key == null || value == null){
		response.sendRedirect("./index.jsp");
	}
	
	session.setAttribute(key, value);
	response.sendRedirect("./index.jsp"); // 리디렉트
	// request.getRequestDispatcher("").forward(request,response); 포워딩
%>