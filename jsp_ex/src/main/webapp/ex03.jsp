<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%--
	request ��ü (jsp���ΰ�ü/����°�ü = ServletClass.HttpRequest)
		���ø޼���
	1. getContextPath() : webapp�� context path�� ���ö� ���
	2. getMethod() : GET/POST ������ ���� �޼���
	3. getSession() : ���ǰ�ü�� ���ö� ���
	4. getProtocol() : ���������� ���ö� ���
	5. getRequestURL()
	6. getRequestURI()
	7. getQueryString() 
 --%>
<body>
<%
	out.println("���� : "+ request.getServerName() +"<br>");
	out.println("��Ʈ : "+ request.getServerPort() +"<br>");
	out.println("��û��� : "+ request.getMethod() +"<br>");
	out.println("�������� : "+ request.getProtocol() +"<br>");
	out.println("url : "+ request.getRequestURL() +"<br>");
	out.println("uri : "+ request.getRequestURI() +"<br>");
%>

</body>
</html>