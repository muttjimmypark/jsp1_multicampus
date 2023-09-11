<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

* 쿠키
0. 인증작업 요청과 응답 ex.로그인
-> 일정시간이 지나 http연결이 끊어짐
-> 재연결 할때마다 재인증을 하면 클라이언트의 불편 + 서버에도 부담
= 웹브라우저가 텍스트파일로 일부 정보를 확보
-> 보안에 취약 -> 세션으로 대체되는중
1. 사용자가 웹사이트를 처음 방문할때 웹사이트에서 클라이언트의 컴퓨터에 저장해놓은 작은 파일
2. HTTP 프로토콜은 웹브라우저에 응답한 후, 일정시간이 지나면 접속을 끊는 특성
3. 쿠키는 서버에서 생성하며, 클라이언트pc에 저장된다.
4. 쿠키는 웹브라우저가 관리하며, 개당 최대 4KB로 제한적이다.

* 쿠키의 생성방법
1. 생성은 쿠키 클래스를 사용 -> 쿠키 속성을 setter로 주입
-> 서버response객체에 탑재해서 전송 =addCookie()

* 쿠키의 관련 메서드
setMaxAge() : 쿠키의 유효기간
setPath() : 쿠키사용을 위한 경로 설정
setValue() : 쿠키값을 설정
setVersion() : 쿠키의 버전
getMaxAge(), getPath(), getVersion()
getName() : 쿠키의 이름
getCookies() : 브라우저가 보낸 쿠키를 배열형태로 return.

<%
	String cookieName = "id";
%>
</body>
</html>