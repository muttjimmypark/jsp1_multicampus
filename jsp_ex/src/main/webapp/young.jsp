<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%! int age; %>
<%
	age = Integer.parseInt(request.getParameter("age"));
%><br>
����� ���̴� <%=age %>�� : �����Դϴ�
<a href = "input_age.html">ùȭ������</a>
</body>
</html>