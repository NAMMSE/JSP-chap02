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
		<li>�� ������ ó�� �����ϴ� ������� ��Ű�� ����ID�� �߰��Ѵ�.</li>
		<li>�� �� ����ID�� �Ժη� ����/�����ϱ� ���� ����� ���̾�� �Ѵ�.</li>
		<li>������� ��Ű�� ����� ����ID�� �ش� ����ڰ� ��û�� ���������� �Բ� �Ƿ��´�</li>
		<li>��Ű�� ����� ����ID�� �⺻������ ������� �� �������� ����ɶ����� �����ȴ�(���� ������ ������ �� �ִ�)</li>
		<li>���ǿ� �����͸� �����ϴ� ���� ������ ��ǻ���� �ڿ��� ����ϴ� ���̹Ƿ� ���ǿ� �ʹ� ���� �����͸� �����ϴ� ���� �����ؾ��Ѵ�.</li>
	</ol>
	
	<h3># ���� ��Ʈ����Ʈ �߰��ϱ�</h3>
	
	<form action="./add.jsp" method="POST" id="attrAddForm">
		<input type="text" name="key" placeholder="Input Key" autocomplete="off" />
		<input type="text" name="value" placeholder="Input value" autocomplete="off" />
	</form>
	
	<!-- �ش� form �ٱ��� �ش� form �Ҽ��� input �±׸� �߰��� ���� �ִ� -->
	<input type="number" name="age" form="attrAddForm" placeholder="age" disabled/>
	<input type="submit" form="attrAddForm" />
	
	<hr />
	
	<%
		// ���� ���ǿ� �ִ� ��� ���� ��Ʈ����Ʈ���� html�� ���
		
		// ���ǿ� �ִ� ��� ��Ʈ����Ʈ�� �̸����� ����
		java.util.Enumeration<String> attrNames = session.getAttributeNames();
	
		out.print("<table border=\"1\"><tr><th>key</th><th>value</th>"
		+ "<th>�� ����</th><th>����</th></tr>");
		// ���� ���(��Ʈ����Ʈ �̸�)�� ������ �ݺ�
		int cnt=0;
		while(attrNames.hasMoreElements()){
			String attrName = attrNames.nextElement(); // ��Ʈ����Ʈ �̸��� �ϳ� ����
			
			if(attrName != null){
				out.print(String.format(//"<tr><td>%s</td><td>%s</td><td><input type=\"text\" id=\"updateContent\" data-count=\"%d\">"+
										//"<button type=\"submit\" data-update=\"%s\">����</button></td>"
										
										"<tr><td>%s</td><td>%s</td><td><form action=\"/chap02/attribute/update\" method=\"POST\">"+
										"<input type=\"text\" name=\"value\"><input type=\"hidden\" name=\"key\" value=\"%s\">"+
										"<button type=\"submit\">����</button></form></td>"
											
							,attrName, session.getAttribute(attrName) ,attrName));
				
				
				out.print(String.format("<td><form action=\"/chap02/attribute/delete\" method=\"POST\"><input type=\"hidden\" name=\"key\" value=\"%s\">"+
						"<input type=\"submit\" value=\"����\"></form></td></tr>",  attrName));
				//<button onclick=\"deleteBtnAction('%s')\">����</button>
			}
			cnt++;
		}
		out.print("</table>");
	%>
	<script>
		//function deleteBtnAction(attrName){
		//	location.href = '/chap02/attribute/delete?key=' + attrName;
		//}
		
		// dataset �Ἥ �����غ���
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