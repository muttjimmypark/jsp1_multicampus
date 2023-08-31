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
request의 param 관련 메서드

1. getParameter(String name) : name에 대응하는 값을 반환
2. getParameterNames() : request가 가진 name들을 다 반환
3. getParameterValues(String name) : name에 대응하는 값들을 배열로 반환 (1로 반환못하거나 하는것들)
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
이름 : <%=name %><br>
아이디 : <%=id %><br>
비밀번호 : <%=pw %><br>
성별 : <%=gender %><br>
취미 : <%=Arrays.toString(hobbyArr) %><br>
지역 : <%=local %><br>
</body>
</html>