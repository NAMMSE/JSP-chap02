<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ������</title>
</head>
<body>
	<form action="/chap02/attribute/login" method="POST">
		���̵� : <input type="text" name="user_id"/> <br>
		��й�ȣ : <input type="password" name="user_password"> <br>
		<input type="submit" value="�α���"/>
		<input type="reset" value="���"/>
	</form>
	
	
	
	<a href="./view/login_result_page.jsp">�α��� Ȯ�� ������</a>
	
	<% if(session.getAttribute("login") != null && ((boolean)session.getAttribute("login"))){%>
	
		<div>���� �α��� ���Դϴ�.
		<form action="/chap02/attribute/logout" method="POST"> 
			<button type="submit" name="logout" value="logout" onClick="checkRow(this.form.valueId.value)">�α׾ƿ�</button> <!-- onclick �ڿ� ������ ������ value���� ��ȯ�Ѵ� -->
			</form> 
		</div>
		<button id="btn-logout">����� �α׾ƿ�</button>
	<%} else {%>
		<div>�α����� �ʿ��մϴ�.</div>
	<% } %>
	
	<!-- ����� �ڵ� -->
	<script src="/chap02/assets/js/login.js"> </script> <!-- src�� �������ϸ� js������ �������� �޾ư��� ���� -->

</body>
</html>