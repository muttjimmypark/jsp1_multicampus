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
[JSP 태그 종류]
- 지시자 directive = <%@ 맨윗줄에 페이지속성을 선언 %>
- 스크립팅 요소 = scriptlet, expression, 선언부
1. 스크립틀릿 : <% 이 안에 자바 사용할수 있음 %>
2. 익스프레션 : <%= 결과값을 출력시킬수 있음 %>
3. 선언 : <%! 선언내용을 작성 %>
4. 주석 : 지금 이 메모하는 부분
5. 액션태그 <jsp:action> java bean 연결할때 사용 </jsp:action>

[지시자 종류-속성] : 맨윗줄 같이보면서 이해
1. page
	1-1. info (없어도됨) : 페이지를 설명 문자열
	1-2. language : jsp영역에서 사용할 언어
	1-3. contentType : 출력속성을 브라우저에게 알려줌
	1-4. extends (컨테이너가 알아서 해줌) : 본 페이지가 서블릿으로 변환될때 상속받을 클래스를 수동 지정
	1-5. import : 자바코드 import와 기능동일 (다른패키지 클래스 불러올때)
	1-6. session : HttpSession 속성의 사용여부 (후에 자세히 다룸)
	1-7. buffer : 출력 크기를 KB단위로 지정
	1-8. autoFlush : 버퍼가 꽉찼을때 자동적으로 버퍼를 비우는 속성
	1-9. isThreadSafe : 본 jsp 페이지가 다중 요청을 처리할건지 여부
	1-10. errorPage : 예외처리에 별개 에러페이지를 사용할때 URL을 입력
	1-11. isErrorPage : 내가 에러페이지인지 명시함
	1-12. pageEncoding : contentType에서 charset 쓰듯이 사용
	
	1-5-1. 작성안해도 import되는 패키지
		- javax.servlet
		- javax.servlet.jsp
		- javax.servlet.http
		
		
2. include : 다른 jsp나 html 파일들을 불러와서, 현재 페이지의 일부로 사용할수있다


3. taglib : 액션태그를 사용할때 필요한 지시자.
- 액션은 바로 사용할수 있는것, 라이브러리를 로드해야 쓸수 있는것으로 나뉜다
- taglib은 후자의 경우 필요하다
 --%>
<%@ taglib prefix="c" uri="http://oracle.com/jsp/jstl/core" %>


<%--
[JSP의 내부 객체]
- 생성 선언 안하고 바로 사용할수 있는 객체
- JSP컨테이너에 의해 servlet으로 변환될때 자동으로 생성되는 객체
1. 입출력 객체 : request, response, out (서블릿 메서드에서 사용되던 것들)
2. 서블릿 객체
	2-1. page : JSP페이지로부터 생성된 서블릿
	2-2. config : JSP페이지의 구성정보를 가져옴
3. 세션 객체 : 세션이 연결됐을때 관련기능을 함
4. 예외 객체 : exception 처리와 관련된 기능
 --%>

<body>

<%
	int sum = 0;
	for(int cnt = 1; cnt <= 100; cnt++) {
		sum += cnt;
	}
%>

zeroback : <%=sum%><br><br>

<h3>오늘의 날짜</h3>
<%@ include file="testForInclude.jsp" %>

</body>
</html>