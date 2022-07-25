<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상품상세 페이지</title>
</head>
<body>

	<h3># 실려있는 attribute를 이름으로 꺼낼 수 있다</h3>
	<p>어트리뷰트는 저장된 객체의 toString()을 호출해 웹 페이지에 출력한다</p>
	
	<!-- 출력방법1 -->
	${product1 }
	
	<!-- 출력방법2 -->
	<%=request.getAttribute("product1") %>

</body>
</html>