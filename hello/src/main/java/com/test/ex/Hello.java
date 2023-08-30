package com.test.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hello
 */
//@WebServlet("/Hlo")
public class Hello extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hello() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("Hello Servlet : GET");
		
		/**
		 * Servlet 특징
		 * 
		 * 동적 웹어플리케이션 컴포넌트
		 * 클라이언트의 요청에 동적으로 동작. 응답은 html로
		 * java thread를 이용해서 동작
		 * MVC 패턴에서의 controller로 이용된다
		 */
		
		/**
		 * Mapping된 주소 localhost:8080/hello/Hlo
		 * 매핑 전 기존 경로 /hello/servlet/com.text.ex.Hello
		 * 
		 * 간략화되어 편리하다 + 보안 측면에도 도움
		 * 
		 * Mapping 방법 1or2
		 * 1. web.xml
		 * 2. Annotation @WebServlet("/Hlo")
		 */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
