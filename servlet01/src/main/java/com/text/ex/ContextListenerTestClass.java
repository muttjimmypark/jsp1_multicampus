package com.text.ex;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextListenerTestClass implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("when destroy, listener work contextDestroyed()");
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("when start, listener work contextInitialized()");
	}

}
