<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%--

response ��ü �޼���
1. getCharacterEncoding() : ������ �������ڵ��� ��ȯ
2. addCookie()
3. sendRedirect(url) : �̵��� url�� ����
	ex. �ٷ�� ����� ���� ���ǿ� ���� ȭ����ȯ�� �б⸦ �� �� �ִ� 

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
�Է��Ͻ� ���̴� <%=age %>

</body>
</html>