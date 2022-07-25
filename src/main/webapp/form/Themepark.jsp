<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- 놀이동산 가격표 보고 어떤 티켓을 몇장 살지 고른다음 서버로 보내서 영수증 출력하기
		
	 -->
	 
	 <table border="1">
	 <form action="http://localhost:8888/chap02/form/themepark">
		<tr>
			<th>종류</th>
			<th>대인</th>
			<th>청소년</th>
			<th>소인</th>
		</tr>
		<tr>
			<td>주간권(1일권)</td>
				<td>45,000원<br><input type="number" name="all" min="0"></td>
				<td>38,000원<br><input type="number" name="all" min="0"></td>
				<td>35,000원<br><input type="number" name="all" min="0"></td>
		</tr>
		<tr>
			<td>야간권(17시~)</td>
				<td>36,000원<br><input type="number" name="night" min="0"></td>
				<td>33,000원<br><input type="number" name="night" min="0"></td>
				<td>31,000원<br><input type="number" name="night" min="0"></td>
		</tr>
		<input type="submit" value="예매하기">
		</form>
	</table>

</body>
</html>