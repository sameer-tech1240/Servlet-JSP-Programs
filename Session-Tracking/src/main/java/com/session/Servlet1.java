package com.session;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet1")
public class Servlet1 extends HttpServlet {


	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("nm");
		PrintWriter writer = resp.getWriter();
		
		Cookie cookie = new Cookie("nm", name);
		resp.addCookie(cookie);
		
		
		resp.setContentType("text/html");
		writer.println("<h1>Welcome to Servlet1 name : " + name + "</h1>");
		writer.println("<br> <a href='servlet2'>Servlet2</a>");
	}

}
