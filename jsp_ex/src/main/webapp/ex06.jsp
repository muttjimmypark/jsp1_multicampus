<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
* 액션태그<br>
- 페이지 내에서의 동작을 정의하는 태그<br>
- JAVA Bean과 연관이 있다<br>
- 웹브라우저에 전달하지않고 웹컨테이너에서 실행됨<br>
- 결과만 웹브라우저로 전달되면서 출력<br>
ex. 페이지이동(forward), include, param<br><br>

* 액션태그의 종류<br>
1. standard action : jsp페이지에서 바로사용할수있는 액션<br>
2. custom action : 추가 라이브러리를 설치해야 사용할수있는 액션<br><br>

* standard action example<br>
<%-- <jsp:include page="adult.jsp" /><br><br>  jsp 접두어는 표준액션임을 의미함 --%>

* custom action example<br>
<%-- <c: set var="i" value="0" /> --%>
<br><br><br><br><br>

<p>지금 현재 페이지는 ex06입니다</p>
<%--<jsp:forward page="ex06_1.jsp" /> --%>
<jsp:include page="ex06_1.jsp" />
<p>include 이후 본문도 표현됩니다</p>

<p>ex07 내용은 아래 예제로 갈음합니다</p>
<jsp:forward page="adult.jsp">
	<jsp:param value="20" name="age" />
</jsp:forward>
</body>
</html>