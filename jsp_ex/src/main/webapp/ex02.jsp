<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<!-- ex01.jsp�� ������, ���ΰ�ü ������ -->
<body>
<%!
int i = 100;
String str = "test";
public int dutsem(int a, int b) {
	return a+b;
}
%>

<%
out.println("i = "+ i +"<br>");
out.println("str = "+ str +"<br>");
out.println("dutsem = "+ dutsem(2, 10) +"<br>");
%><br><br>



<!-- expression Ȱ�뿹��
ǥ������ ������� string���� ��µȴ�
�����ݷ��� ����Ҽ� ����
 -->
i= <%=i%><br>
str= <%=str%><br>
dutsem= <%=dutsem(1,2)%>
</body>
</html>