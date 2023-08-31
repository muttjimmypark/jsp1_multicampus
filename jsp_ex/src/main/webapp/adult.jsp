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
당신의 나이는 <%=age %>살 : 성인입니다
<a href = "input_age.html">첫화면으로</a>
</body>
</html>