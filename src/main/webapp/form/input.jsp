<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Input</title>
</head>
<body>

	<h3># input Tags</h3>
	
	<ul>
		<li>사용자가 원하는 값을 입력할 수 있는 태그</li>
		<li>type 속성에 따라 다양한 방식으로 값을 입력할 수 있다</li>
	</ul>>
	
	<hr>
	
	<table border="1">
		<tr>
			<th>type</th>
			<th>모양</th>
			<th>용도</th>
		</tr>
		<tr>
			<td>type="text"</td>
			<td><input type="text"></td>
			<td>아이디, 글 제목 등</td>
		</tr>
		<tr>
			<td>type="number"</td>
			<td><input type="number"></td>
			<td>숫자 카운트</td>
		</tr>
		<tr>
			<td>type="password"</td>
			<td><input type="password"></td>
			<td>비밀번호</td>
		</tr>
		<tr>
			<td>type="email"</td>
			<td>
				<form>
					<input type="email">
					<input type="submit">
				</form>
			</td>
			<td>이메일, 요청시 이메일 형식 검사</td>
		</tr>
		<tr>
			<td>type="submit"</td>
			<td><input type="submit"></td>
			<td>요청버튼</td>
		</tr>
		<tr>
			<td>type="reset"</td>
			<td><input type="reset"></td>
			<td>초기화 버튼</td>
		</tr>
		<tr>
			<td>type="button"</td>
			<td><input type="button"></td>
			<td>기능 없는 버튼</td>
		</tr>
		<tr>
			<td>type="file"</td>
			<td><input type="file"></td>
			<td>파일 업로드</td>
		</tr>
		<tr>
			<td>type="date"</td>
			<td><input type="date"></td>
			<td>날짜</td>
		</tr>
		<tr>
			<td>type="radio"</td>
			<td>		
				<input type="radio" id="gender" name="123"><label for="gender" id="man">남자</label><br>
				<input type="radio" id="gender" name="123"><label for="gender" id = "woman">여자</label><br>
				<input type="radio" id="gender" name="123"><label for="gender" id="etc">그외</label><br>
			</td>
			<td>하나만 선택</td>
		</tr>
		<tr>
			<td>type="checkbox"</td>
			<td>
				<!-- 같은 name 속성으로 설정해두면 하나만 선택할 수 있다 -->
				<input type="checkbox" name="bap"><label for="boggumbab" id="man">볶음밥</label><br>
				<input type="checkbox" name="bap"><label for="bibima" id = "woman">비빔밥</label><br>
				<input type="checkbox" name="bap"><label for="msoy id="etc">간계밥</label><br>
			</td>
			<td>복수선택</td>
		</tr>
		
		
	</table>

</body>
</html>