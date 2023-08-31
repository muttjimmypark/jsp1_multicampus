package com.test.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CycleEx
 */
@WebServlet("/CycleEx")
public class CycleEx extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	/** 14차시
	 * 
	 * 서블릿 동작순서 다시
	 * 브라우저 -> 서버 -> 웹애플리케이션서버
	 * -> 서블릿 컨테이너
	 * 1. 쓰레드 생성
	 * 2. 서블릿 객체 생성
	 * 
	 * 
	 * 서블릿-CGI 차이점
	 * 0. 서블릿은 CGI를 대체하며 등장한 Java기술이다
	 * 
	 * 1-1. CGI : 로딩 -> 초기화작업
	 * ㄴ 접속자 있을때마다 매번 수행하니까 서버에서의 오버헤드가 크다
	 * 1-2. 서블릿 : 한번 메모리에 로딩되어 수행을 시작하면
	 * 당장 작업이 끝나도 메모리에서 해제되지 않고
	 * 다음 작업을 기다린다. = 로딩~초기화를 여러번 수행하지 않음
	 * 
	 * 2-1. CGI : 환경마다 성능향상을 위한 api가 별개로 존재
	 * 2-2. 서블릿 : 특정 웹서버 환경에 의존적이지 않음 (JVM 덕분)
	 * 
	 * 3-1. CGI : 브라우저부터 출발한 요청들 각각에 프로세스를 생성
	 * 3-2. 서블릿 : 하나의 프로세스에 멀티쓰레드로 동작
	 * 
	 * 
	 * 서블릿 생명주기
	 * 객체 생성 -> init() 호출 : 최초1회
	 * -> service(), doGet(), doPost() 호출 : 요청에 따라 매번
	 * -> destroy() 호출 : 마지막 1회
	 * 
	 */
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CycleEx() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	//super.init();
    	System.out.println("Here is init()");
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
    	System.out.println("Here is doGet()");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
    	System.out.println("Here is doPost()");
	}
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		//super.destroy();
    	System.out.println("Here is destroy()");		
	}

}
