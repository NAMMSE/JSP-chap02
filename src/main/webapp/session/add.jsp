<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- ���� �������ϴ� jsp / �ڹٸ� �ۼ��ϰ� �������Ѵ� -->

<%
	String key = request.getParameter("key");
	String value = request.getParameter("value");
	
	if(key == null || value == null){
		response.sendRedirect("./index.jsp");
	}
	
	session.setAttribute(key, value);
	response.sendRedirect("./index.jsp"); // ����Ʈ
	// request.getRequestDispatcher("").forward(request,response); ������
%>