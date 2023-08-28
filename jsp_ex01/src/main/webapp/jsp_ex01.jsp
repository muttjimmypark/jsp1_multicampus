<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
hello jsp


JSP 특징
- 동적 웹어플리케이션 컴포넌트 (컴포넌트=컨테이너를 구성하는 기술적 요소)
- 클라이언트의 요청에 동적으로 동작. 응답은 html로
- jsp 파일은 서블릿으로 변환된 뒤 실행된다
- MVC 패턴에서 view로 이용됨


JAVA 웹 : JavaEE(J2EE)를 이용한 웹 프로그래밍
> 톰캣 컨테이너
	> 웹 컨테이너
		> JSP, Servlet 컴포넌트
	> EJB 컨테이너
		> EJB 컴포넌트

		
JSP파일 저장
-> 서블릿 변환 = Java파일로 : jsp_ex01_jsp.java
(톰캣/work/Catalina/localhost/프로젝트명/쭉쭉 들어가면 보임)
-> class


jsp 동작 과정
1. 클라이언트 브라우저가 jsp 파일 요청
2. jsp 컨테이너로 전송 : 요청된 jsp파일을 웹컨테이너로
3. jsp 파일 파싱 : 최초 요청 1회에만 3~5 실행
4. 서블릿으로 변환 : 새로운 자바파일을 생성
5. 클래스 파일 생성 : 컴파일
6. 클래스 파일을 메모리에 로딩
7. html 전송 : 로딩하여 실행한 결과가 웹서버로 넘어감
				-> 웹서버가 html형태로 응답을 보낸다
8. 브라우저에 html 실행




</body>
</html>