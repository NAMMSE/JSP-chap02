<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3># Attribute Scope</h3>
	
	<dl>
		<dt>page scope</dt>
		<dd>
			해당 서블렛(jsp)에서만 사용할 수 있는 어트리뷰트. 해당 서블렛(.jsp)를 벗어나면 사라진다 / 지역변수 느낌
		</dd>
		<dt>request scope</dt>
		<dd>
			해당 요청에 응답하여 요청 객체가 사라질 때까지 유지되는 어트리뷰트. (forward, include까지는 유지된다) / 한 트랜잭션 느낌
		</dd>
		
		<dt>session scope</dt>
		<dd>
			세션이 만료될때까지 수명이 유지되는 어트리뷰트. (다른 페이지를 돌아다녀도 세션ID를 가지고있으면 유지된다)
			클라이언트가 웹 서버에 처음 요청을 보내면 서버로부터  세션ID를 발급받는다
			클라이언트는 해당 세션ID를 요청해 항상 포함시켜 보내며 자신의 세션ID를 통해 개인 라커처럼 세션 객체에 접근할 수 있다.
			해당 클라이언트가 세션ID를 보유하고 있는 동안 해당 세션ID로 접근 가능한 세션 객체에 저장된 어트리뷰트에 계속해서 접근할 수 있다 
		</dd>
		
		<dt>application scope</dt>
		
		<dd>
			웹 어플리케이션 서버(Apache-Tomcat)에 저장해놓는 어트리뷰트
			서버가 꺼지기 전까지 유지된다. 거의 안넣는다
		</dd>
		
	</dl>
	<div>
		<a href="/chap02/attribute/scope">어트리뷰트 수명 테스트1 (서블릿 거쳐가기)</a>
	</div>
	<div>
		<a href="/chap02/attribute/view/car.jsp">어트리뷰트 수명 테스트2 (바로 확인 페이지로 가지)</a>
	</div>

</body>
</html>