package com.registerservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter writer = resp.getWriter();
		writer.println("<h2>Welcome to Register Servlet</h2>");
		String name = req.getParameter("user_name");
		String password = req.getParameter("user_password");
		String email = req.getParameter("user_email");
		String gender = req.getParameter("user_gender");
		String course = req.getParameter("user_course");
		String condition = req.getParameter("condition");
		if (condition != null) {
			
		
		if (condition.equals("checked")) {
			writer.println("<h2> Name : " + name + "</h2>");
			writer.println("<h2> Password : " + password + "</h2>");
			writer.println("<h2> Email : " + email + "</h2>");
			writer.println("<h2> Gender : " + gender + "</h2>");
			writer.println("<h2> Course : " + course + "</h2>");
		
			
		} else {
			writer.println("<h2> You have not accepted terms and conditions</h2>");
		}
		}
		else {
			writer.println("<h2> You have not accepted terms and conditions</h2>");

		}
	}

}
