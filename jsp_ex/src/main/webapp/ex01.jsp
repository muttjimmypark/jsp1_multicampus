<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    info="copyrights myself"
    import="java.util.*, java.sql.*"
    session = "false"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%--
[JSP �±� ����]
- ������ directive = <%@ �����ٿ� �������Ӽ��� ���� %>
- ��ũ���� ��� = scriptlet, expression, �����
1. ��ũ��Ʋ�� : <% �� �ȿ� �ڹ� ����Ҽ� ���� %>
2. �ͽ������� : <%= ������� ��½�ų�� ���� %>
3. ���� : <%! ���𳻿��� �ۼ� %>
4. �ּ� : ���� �� �޸��ϴ� �κ�
5. �׼��±� <jsp:action> java bean �����Ҷ� ��� </jsp:action>

[������ ����-�Ӽ�] : ������ ���̺��鼭 ����
1. page
	1-1. info (�����) : �������� ���� ���ڿ�
	1-2. language : jsp�������� ����� ���
	1-3. contentType : ��¼Ӽ��� ���������� �˷���
	1-4. extends (�����̳ʰ� �˾Ƽ� ����) : �� �������� �������� ��ȯ�ɶ� ��ӹ��� Ŭ������ ���� ����
	1-5. import : �ڹ��ڵ� import�� ��ɵ��� (�ٸ���Ű�� Ŭ���� �ҷ��ö�)
	1-6. session : HttpSession �Ӽ��� ��뿩�� (�Ŀ� �ڼ��� �ٷ�)
	1-7. buffer : ��� ũ�⸦ KB������ ����
	1-8. autoFlush : ���۰� ��á���� �ڵ������� ���۸� ���� �Ӽ�
	1-9. isThreadSafe : �� jsp �������� ���� ��û�� ó���Ұ��� ����
	1-10. errorPage : ����ó���� ���� ������������ ����Ҷ� URL�� �Է�
	1-11. isErrorPage : ���� �������������� �����
	1-12. pageEncoding : contentType���� charset ������ ���
	
	1-5-1. �ۼ����ص� import�Ǵ� ��Ű��
		- javax.servlet
		- javax.servlet.jsp
		- javax.servlet.http
		
		
2. include : �ٸ� jsp�� html ���ϵ��� �ҷ��ͼ�, ���� �������� �Ϻη� ����Ҽ��ִ�


3. taglib : �׼��±׸� ����Ҷ� �ʿ��� ������.
- �׼��� �ٷ� ����Ҽ� �ִ°�, ���̺귯���� �ε��ؾ� ���� �ִ°����� ������
- taglib�� ������ ��� �ʿ��ϴ�
 --%>
<%@ taglib prefix="c" uri="http://oracle.com/jsp/jstl/core" %>


<%--
[JSP�� ���� ��ü]
- ���� ���� ���ϰ� �ٷ� ����Ҽ� �ִ� ��ü
- JSP�����̳ʿ� ���� servlet���� ��ȯ�ɶ� �ڵ����� �����Ǵ� ��ü
1. ����� ��ü : request, response, out (���� �޼��忡�� ���Ǵ� �͵�)
2. ���� ��ü
	2-1. page : JSP�������κ��� ������ ����
	2-2. config : JSP�������� ���������� ������
3. ���� ��ü : ������ ��������� ���ñ���� ��
4. ���� ��ü : exception ó���� ���õ� ���
 --%>

<body>

<%
	int sum = 0;
	for(int cnt = 1; cnt <= 100; cnt++) {
		sum += cnt;
	}
%>

zeroback : <%=sum%><br><br>

<h3>������ ��¥</h3>
<%@ include file="testForInclude.jsp" %>

</body>
</html>