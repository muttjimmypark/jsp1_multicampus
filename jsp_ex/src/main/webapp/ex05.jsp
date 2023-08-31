<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%--

response 객체 메서드
1. getCharacterEncoding() : 응답의 문자인코딩을 반환
2. addCookie()
3. sendRedirect(url) : 이동할 url을 지정
	ex. 다루는 입출력 값의 조건에 따라 화면전환에 분기를 줄 수 있다 

 --%>
<body>
<%! int age; %>
<%
	age = Integer.parseInt(request.getParameter("age"));

	if(age >= 19) {
		response.sendRedirect("adult.jsp?age="+ age);
	} else {
		response.sendRedirect("young.jsp?age="+ age);
	}
%><br>
입력하신 나이는 <%=age %>

</body>
</html>