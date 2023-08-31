package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormDemo01
 */
@WebServlet("/FormDemo01")
public class FormDemo01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormDemo01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Start doPost()");

		/** 한글처리방식
		 * 톰캣 : ISO-8859-1 UNICODE (시종착 웹페이지 인코딩을 맞춰도, 통신할때 깨짐)
		 * GET : [TOMCAT -> server.xml -> <connector>]에 URIEncoding="utf-8"
		 * POST : doPost()에 구문삽입 = request.setCharacterEncoding("utf-8");
		 * 
		 */
		
		request.setCharacterEncoding("utf-8");
		
		Map<String, String> savedForm = new HashMap<>();
		savedForm.put("userName", request.getParameter("userName"));
		savedForm.put("userId", request.getParameter("userId"));
		savedForm.put("userPassword", request.getParameter("userPassword"));
		savedForm.put("gender", request.getParameter("gender"));
		savedForm.put("address", request.getParameter("address1"));
		savedForm.put("hobbies", Arrays.toString(request.getParameterValues("userHobby")));

		response.setContentType("text/html; charset=utf-8");
		PrintWriter printWriter = response.getWriter();
		printWriter.println("<html>");
		printWriter.println("<head>");
		printWriter.println("<title>form demo response page</title>");
		printWriter.println("</head>");
		printWriter.println("<body>");
		for(String key : savedForm.keySet()) {
			printWriter.println(key +" : "+ savedForm.get(key) +"<br>");
		}
		printWriter.println("</body>");
		printWriter.println("</html>");
		printWriter.close();
	}

}
