package com.text.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InitServlet
 */
@WebServlet("/InitServlet")
public class InitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/** 17차시
	 * 
	 * Context Path : WAS에서 웹어플리케이션을 구분하기위한 path
	 * ㄴ 이클립스에서 프로젝트 생성할때마다 자동으로 할당하여 server.xml에 저장
	 * 
	 * 
	 * 서블릿 초기화 방법 : ServletConfig 클래스
	 * > 아이디정보, 특정경로 등 서블릿 생성초기 필요 데이터들을 "초기화 파라미터"로 받음
	 * > 초기화 파라미터
	 * 1. web.xml에 기술. ServletConfig.getInitParameter()로 접근가능 
	 * 2. 서블릿파일에 직접 기술.
	 * 
	 */
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InitServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ServletConfig ~> HttpServlet 으로 상속 물려받았기에 함수 바로 사용가능
		String id = getInitParameter("id");
		String pw = getInitParameter("pw");
		String local = getInitParameter("local");

		response.setContentType("text/html; charset=utf-8");
		PrintWriter printWriter = response.getWriter();
		printWriter.println("<html>");
		printWriter.println("<head>");
		printWriter.println("<title>form demo response page</title>");
		printWriter.println("</head>");
		printWriter.println("<body>");
		printWriter.println("id : "+ id +"<br>");
		printWriter.println("pw : "+ pw +"<br>");
		printWriter.println("local : "+ local +"<br>");
		printWriter.println("</body>");
		printWriter.println("</html>");
		printWriter.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
