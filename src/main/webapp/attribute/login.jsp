<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 페이지</title>
</head>
<body>
	<form action="/chap02/attribute/login" method="POST">
		아이디 : <input type="text" name="user_id"/> <br>
		비밀번호 : <input type="password" name="user_password"> <br>
		<input type="submit" value="로그인"/>
		<input type="reset" value="취소"/>
	</form>
	
	
	
	<a href="./view/login_result_page.jsp">로그인 확인 페이지</a>
	
	<% if(session.getAttribute("login") != null && ((boolean)session.getAttribute("login"))){%>
	
		<div>현재 로그인 중입니다.
		<form action="/chap02/attribute/logout" method="POST"> 
			<button type="submit" name="logout" value="logout" onClick="checkRow(this.form.valueId.value)">로그아웃</button> <!-- onclick 뒤에 저렇게 적으면 value값을 반환한다 -->
			</form> 
		</div>
		<button id="btn-logout">강사님 로그아웃</button>
	<%} else {%>
		<div>로그인이 필요합니다.</div>
	<% } %>
	
	<!-- 강사님 코드 -->
	<script src="/chap02/assets/js/login.js"> </script> <!-- src로 접속을하면 js파일을 서버에서 받아가는 개념 -->

</body>
</html>