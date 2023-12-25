package com.hidden;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet1")
public class FirstServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("nm");
		resp.setContentType("text/html");
		PrintWriter writer = resp.getWriter();
		writer.println("<form action = 'servlet2'> <input type = 'hidden' name = 'user' value = '"+name+"'><br><button type='submit'>servlet2</button></form>");
	
	}
}
