<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%--
request�� param ���� �޼���

1. getParameter(String name) : name�� �����ϴ� ���� ��ȯ
2. getParameterNames() : request�� ���� name���� �� ��ȯ
3. getParameterValues(String name) : name�� �����ϴ� ������ �迭�� ��ȯ (1�� ��ȯ���ϰų� �ϴ°͵�)
 --%>
<body>
<%!
	String name, id, pw, gender, local;
	String[] hobbyArr;
%>
<%
	request.setCharacterEncoding("utf-8");

	name = request.getParameter("userName");
	id = request.getParameter("userId");
	pw = request.getParameter("userPassword");
	gender = request.getParameter("gender");
	local = request.getParameter("address1");
	hobbyArr = request.getParameterValues("userHobby");
%>
�̸� : <%=name %><br>
���̵� : <%=id %><br>
��й�ȣ : <%=pw %><br>
���� : <%=gender %><br>
��� : <%=Arrays.toString(hobbyArr) %><br>
���� : <%=local %><br>
</body>
</html>