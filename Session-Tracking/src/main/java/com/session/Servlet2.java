package com.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet2")
public class Servlet2 extends HttpServlet {


	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		@SuppressWarnings("unused")
		String name = req.getParameter("nm");
		PrintWriter writer = resp.getWriter();
		Cookie[] cookies = req.getCookies();

		resp.setContentType("text/html");
		writer.println("<h1>Welcome to Servlet2 name : " + cookies[0].getValue() + "</h1>");
	}

}
