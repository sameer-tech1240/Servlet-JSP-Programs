package com.dispacthServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class RequestDispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		resp.setContentType("text/html");
		PrintWriter writer = resp.getWriter();
		RequestDispatcher request;
		if ("sameersiddiqui1240@gmail.com".equals(email) && "sameer123".equals(password)) {
			// home page redirect
			/*
			 * request = req.getRequestDispatcher("/servlet2"); request.forward(req, resp);
			 */
			resp.sendRedirect("servlet2");
		} else {
			// redirect login page
			writer.println("<h4>Invalid email & password</h4>");
			request = req.getRequestDispatcher("/index.html");
			request.include(req, resp);

		}
	}

}
