package com.text.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** 18차시 (3)
 * ServletContextListener = 웹어플리케이션을 감시하는 리스너
 * ㄴcontextInitialized()
 * ㄴcontextDestroy()
 * 시작 또는 종료시, 리스너에서 해당하는 어플리케이션이 시작됨
 * 
 * 리스너 제작 -> web.xml에 해당 리스너 사용을 정의
 * 
 */

/**
 * Servlet implementation class ContextListenerEx
 */
@WebServlet("/ContextListenerEx")
public class ContextListenerEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContextListenerEx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ContextListenerEx : App Start with doGet()");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
