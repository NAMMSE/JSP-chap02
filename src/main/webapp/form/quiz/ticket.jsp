<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ticket</title>
</head>
<body>
	<img src="/chap02/assets/img/iamge.PNG" alt="" />

	<form action="">
		대인 : <input type="text" name="big"> <br>
		청소년 : <input type="number" name="youth" min="0" max="10" > <br>
		소인/경로 :
		<%
			for(int i=1; i<=4; i++){ %>
			<input id="small<%=i %>" type="radio" name="small" value="<%=i%>">
			<label for="small<%=i %>"><%=i %>명</label>
		
		<%}%>
	
	</form>

</body>
</html>