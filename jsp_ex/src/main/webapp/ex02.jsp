<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<!-- ex01.jsp의 지시자, 내부객체 예제들 -->
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



<!-- expression 활용예제
표현식의 결과값은 string으로 출력된다
세미콜론을 사용할수 없다
 -->
i= <%=i%><br>
str= <%=str%><br>
dutsem= <%=dutsem(1,2)%>
</body>
</html>