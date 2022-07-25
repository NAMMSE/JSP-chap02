<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Http Session</title>
</head>
<body>

	<h3># Http Session</h3>
	
	<ol>
		<li>웹 서버는 처음 접속하는 사용자의 쿠키에 세션ID를 추가한다.</li>
		<li>이 때 세션ID는 함부로 위조/변조하기 힘든 어려운 값이어야 한다.</li>
		<li>사용자의 쿠키에 저장된 세션ID는 해당 사용자가 요청을 보낼때마다 함께 실려온다</li>
		<li>쿠키에 저장된 세션ID는 기본적으로 사용자의 웹 브라우저가 종료될때까지 유지된다(물론 설정을 변경할 수 있다)</li>
		<li>세션에 데이터를 저장하는 것은 서버의 컴퓨터의 자원을 사용하는 것이므로 세션에 너무 많은 데이터를 저장하는 것은 자제해야한다.</li>
	</ol>
	
	<h3># 세션 어트리뷰트 추가하기</h3>
	
	<form action="./add.jsp" method="POST" id="attrAddForm">
		<input type="text" name="key" placeholder="Input Key" autocomplete="off" />
		<input type="text" name="value" placeholder="Input value" autocomplete="off" />
	</form>
	
	<!-- 해당 form 바깥에 해당 form 소속의 input 태그를 추가할 수도 있다 -->
	<input type="number" name="age" form="attrAddForm" placeholder="age" disabled/>
	<input type="submit" form="attrAddForm" />
	
	<hr />
	
	<%
		// 현재 세션에 있는 모든 세션 어트리뷰트들을 html에 출력
		
		// 세션에 있는 모든 어트리뷰트의 이름들을 꺼냄
		java.util.Enumeration<String> attrNames = session.getAttributeNames();
	
		out.print("<table border=\"1\"><tr><th>key</th><th>value</th>"
		+ "<th>값 수정</th><th>삭제</th></tr>");
		// 다음 요소(어트리뷰트 이름)가 있으면 반복
		int cnt=0;
		while(attrNames.hasMoreElements()){
			String attrName = attrNames.nextElement(); // 어트리뷰트 이름을 하나 꺼냄
			
			if(attrName != null){
				out.print(String.format(//"<tr><td>%s</td><td>%s</td><td><input type=\"text\" id=\"updateContent\" data-count=\"%d\">"+
										//"<button type=\"submit\" data-update=\"%s\">수정</button></td>"
										
										"<tr><td>%s</td><td>%s</td><td><form action=\"/chap02/attribute/update\" method=\"POST\">"+
										"<input type=\"text\" name=\"value\"><input type=\"hidden\" name=\"key\" value=\"%s\">"+
										"<button type=\"submit\">수정</button></form></td>"
											
							,attrName, session.getAttribute(attrName) ,attrName));
				
				
				out.print(String.format("<td><form action=\"/chap02/attribute/delete\" method=\"POST\"><input type=\"hidden\" name=\"key\" value=\"%s\">"+
						"<input type=\"submit\" value=\"삭제\"></form></td></tr>",  attrName));
				//<button onclick=\"deleteBtnAction('%s')\">삭제</button>
			}
			cnt++;
		}
		out.print("</table>");
	%>
	<script>
		//function deleteBtnAction(attrName){
		//	location.href = '/chap02/attribute/delete?key=' + attrName;
		//}
		
		// dataset 써서 수정해보기
		const update[] = document.querySelectorAll('data-update');
		const updateContent[] = document.querySelectorAll('updateContent');
		const count = document.querySelector('data-count');
		
		function updateBtnAction(e){
			btn = e.target();
			location.href = '/chap02/attribute/update?key=' + btn.dataset.update+'&value=' + updateContent[count];
		}
		update[count].addEventListener('click', updateBtnAction);
	</script>

</body>
</html>