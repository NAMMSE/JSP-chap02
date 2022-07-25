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
			�ش� ����(jsp)������ ����� �� �ִ� ��Ʈ����Ʈ. �ش� ����(.jsp)�� ����� ������� / �������� ����
		</dd>
		<dt>request scope</dt>
		<dd>
			�ش� ��û�� �����Ͽ� ��û ��ü�� ����� ������ �����Ǵ� ��Ʈ����Ʈ. (forward, include������ �����ȴ�) / �� Ʈ����� ����
		</dd>
		
		<dt>session scope</dt>
		<dd>
			������ ����ɶ����� ������ �����Ǵ� ��Ʈ����Ʈ. (�ٸ� �������� ���ƴٳ൵ ����ID�� ������������ �����ȴ�)
			Ŭ���̾�Ʈ�� �� ������ ó�� ��û�� ������ �����κ���  ����ID�� �߱޹޴´�
			Ŭ���̾�Ʈ�� �ش� ����ID�� ��û�� �׻� ���Խ��� ������ �ڽ��� ����ID�� ���� ���� ��Ŀó�� ���� ��ü�� ������ �� �ִ�.
			�ش� Ŭ���̾�Ʈ�� ����ID�� �����ϰ� �ִ� ���� �ش� ����ID�� ���� ������ ���� ��ü�� ����� ��Ʈ����Ʈ�� ����ؼ� ������ �� �ִ� 
		</dd>
		
		<dt>application scope</dt>
		
		<dd>
			�� ���ø����̼� ����(Apache-Tomcat)�� �����س��� ��Ʈ����Ʈ
			������ ������ ������ �����ȴ�. ���� �ȳִ´�
		</dd>
		
	</dl>
	<div>
		<a href="/chap02/attribute/scope">��Ʈ����Ʈ ���� �׽�Ʈ1 (���� ���İ���)</a>
	</div>
	<div>
		<a href="/chap02/attribute/view/car.jsp">��Ʈ����Ʈ ���� �׽�Ʈ2 (�ٷ� Ȯ�� �������� ����)</a>
	</div>

</body>
</html>