<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

* ��Ű
0. �����۾� ��û�� ���� ex.�α���
-> �����ð��� ���� http������ ������
-> �翬�� �Ҷ����� �������� �ϸ� Ŭ���̾�Ʈ�� ���� + �������� �δ�
= ���������� �ؽ�Ʈ���Ϸ� �Ϻ� ������ Ȯ��
-> ���ȿ� ��� -> �������� ��ü�Ǵ���
1. ����ڰ� ������Ʈ�� ó�� �湮�Ҷ� ������Ʈ���� Ŭ���̾�Ʈ�� ��ǻ�Ϳ� �����س��� ���� ����
2. HTTP ���������� ���������� ������ ��, �����ð��� ������ ������ ���� Ư��
3. ��Ű�� �������� �����ϸ�, Ŭ���̾�Ʈpc�� ����ȴ�.
4. ��Ű�� ���������� �����ϸ�, ���� �ִ� 4KB�� �������̴�.

* ��Ű�� �������
1. ������ ��Ű Ŭ������ ��� -> ��Ű �Ӽ��� setter�� ����
-> ����response��ü�� ž���ؼ� ���� =addCookie()

* ��Ű�� ���� �޼���
setMaxAge() : ��Ű�� ��ȿ�Ⱓ
setPath() : ��Ű����� ���� ��� ����
setValue() : ��Ű���� ����
setVersion() : ��Ű�� ����
getMaxAge(), getPath(), getVersion()
getName() : ��Ű�� �̸�
getCookies() : �������� ���� ��Ű�� �迭���·� return.

<%
	String cookieName = "id";
%>
</body>
</html>