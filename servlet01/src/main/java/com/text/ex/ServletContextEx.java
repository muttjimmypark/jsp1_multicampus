package com.text.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** 18차시 (2)
 * ServletContext를 이용한 데이터 공유
 * 여러개의 Servlet에서 데이터를 공유해야 할 경우
 * context parameter를 사용한다
 * > web.xml파일에 데이터를 작성하면, servlet에서 공유가 가능
 * 
 * ServletConfig -> ServletContext 메소드를 활용
 * 
 */

/**
 * Servlet implementation class ServletContextEx
 */
@WebServlet("/ServletContextEx")
public class ServletContextEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletContextEx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tmpId = getServletContext().getInitParameter("id");
		String tmpPw = getServletContext().getInitParameter("pw");
		String tmpLocal = getServletContext().getInitParameter("local");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter printWriter = response.getWriter();
		printWriter.println("<html>");
		printWriter.println("<head>");
		printWriter.println("<title>form demo response page</title>");
		printWriter.println("</head>");
		printWriter.println("<body>");
		printWriter.println("id : "+ tmpId +"<br>");
		printWriter.println("pw : "+ tmpPw +"<br>");
		printWriter.println("local : "+ tmpLocal +"<br>");
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
