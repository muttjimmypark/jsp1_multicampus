<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
* �׼��±�<br>
- ������ �������� ������ �����ϴ� �±�<br>
- JAVA Bean�� ������ �ִ�<br>
- ���������� ���������ʰ� �������̳ʿ��� �����<br>
- ����� ���������� ���޵Ǹ鼭 ���<br>
ex. �������̵�(forward), include, param<br><br>

* �׼��±��� ����<br>
1. standard action : jsp���������� �ٷλ���Ҽ��ִ� �׼�<br>
2. custom action : �߰� ���̺귯���� ��ġ�ؾ� ����Ҽ��ִ� �׼�<br><br>

* standard action example<br>
<%-- <jsp:include page="adult.jsp" /><br><br>  jsp ���ξ�� ǥ�ؾ׼����� �ǹ��� --%>

* custom action example<br>
<%-- <c: set var="i" value="0" /> --%>
<br><br><br><br><br>

<p>���� ���� �������� ex06�Դϴ�</p>
<%--<jsp:forward page="ex06_1.jsp" /> --%>
<jsp:include page="ex06_1.jsp" />
<p>include ���� ������ ǥ���˴ϴ�</p>

<p>ex07 ������ �Ʒ� ������ �����մϴ�</p>
<jsp:forward page="adult.jsp">
	<jsp:param value="20" name="age" />
</jsp:forward>
</body>
</html>