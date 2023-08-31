<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%--
	request 객체 (jsp내부객체/입출력객체 = ServletClass.HttpRequest)
		관련메서드
	1. getContextPath() : webapp의 context path를 얻어올때 사용
	2. getMethod() : GET/POST 구분을 위한 메서드
	3. getSession() : 세션객체를 얻어올때 사용
	4. getProtocol() : 프로토콜을 얻어올때 사용
	5. getRequestURL()
	6. getRequestURI()
	7. getQueryString() 
 --%>
<body>
<%
	out.println("서버 : "+ request.getServerName() +"<br>");
	out.println("포트 : "+ request.getServerPort() +"<br>");
	out.println("요청방식 : "+ request.getMethod() +"<br>");
	out.println("프로토콜 : "+ request.getProtocol() +"<br>");
	out.println("url : "+ request.getRequestURL() +"<br>");
	out.println("uri : "+ request.getRequestURI() +"<br>");
%>

</body>
</html>