<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- ���̵��� ����ǥ ���� � Ƽ���� ���� ���� ������ ������ ������ ������ ����ϱ�
		
	 -->
	 
	 <table border="1">
	 <form action="http://localhost:8888/chap02/form/themepark">
		<tr>
			<th>����</th>
			<th>����</th>
			<th>û�ҳ�</th>
			<th>����</th>
		</tr>
		<tr>
			<td>�ְ���(1�ϱ�)</td>
				<td>45,000��<br><input type="number" name="all" min="0"></td>
				<td>38,000��<br><input type="number" name="all" min="0"></td>
				<td>35,000��<br><input type="number" name="all" min="0"></td>
		</tr>
		<tr>
			<td>�߰���(17��~)</td>
				<td>36,000��<br><input type="number" name="night" min="0"></td>
				<td>33,000��<br><input type="number" name="night" min="0"></td>
				<td>31,000��<br><input type="number" name="night" min="0"></td>
		</tr>
		<input type="submit" value="�����ϱ�">
		</form>
	</table>

</body>
</html>