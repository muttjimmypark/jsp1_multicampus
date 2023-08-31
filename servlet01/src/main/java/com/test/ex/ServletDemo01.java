package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletDemo01
 */
@WebServlet("/Svl01")
public class ServletDemo01 extends HttpServlet {
	/** 230830 1637 (12차시 서블릿 작성규칙)
	 * 
	 * 인터페이스~클래스 구체화 단계
	 * Servlet -> GenericServlet -> HttpServlet -> 내가만든Servlet
	 * 
	 * Servlet이란
	 * 서블릿 엔진에 의해 동작
	 * 여러 사용자에 의해 호출될 수 있다
	 * 
	 * Servlet 작성 규칙
	 * - javax.servlet.http.HttpServlet 을 상속받아야 함
	 * - doGet, doPost 두개의 메서드에 클라이언트 요청이 왔을때 처리해야할 일들을 기술
	 * - 요청/응답에 dto 활용 : HttpServletRequest, HttpServletResponse
	 * 
	 * HttpServletRequest
	 * - 파라미터 key/value
	 * - 클라이언트~서버의 이름
	 * - input type의 데이터
	 * - 주요 메서드 : getParameterValues(), getParameter(), getRemoteHost(), getServerName()
	 * 
	 * HttpServletResponse
	 * - 응답 content 길이, 타입
	 * - 화면에 출력해야할 모든 값
	 * - 주요 메서드
	 * > setContentType(String type)
	 * > setContentLength(int length)
	 * > getWriter() : 웹브라우저에 출력할 스트림
	 * 
	 */
	
	/** 13차시
	 * 
	 * doGet()
	 * - html form태그가 실행할 method=get일때
	 * - 서블릿 클래스에 매핑된 url로 직접 접속시도가 일어났을때
	 *     (url입력시 get호출이 기본값이라는 뜻임)
	 *     
	 * doPost()
	 * - html form태그가 실행할 method=post일때
	 * 
	 */
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletDemo01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int sum = 0;
		for(int cnt = 1; cnt <= 100; cnt++) {
			sum += cnt;
		}
		
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>ZeroBack</title>");
		out.println("</head>");
		out.println("<body>");
		out.printf("My ZeroBack is %d", sum);
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		System.out.println("doPost through");
		doGet(request, response);
		*/

		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>post page</title>");
		out.println("</head>");
		out.println("<body>");
		out.printf("hello post page");
		out.println("</body>");
		out.println("</html>");
	}

}
