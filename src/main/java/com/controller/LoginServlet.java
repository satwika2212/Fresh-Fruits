package com.controller;

import com.dao.CustomerDAO;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		HttpSession session=request.getSession(true);
		if(email.equals("admin@codegnan.com") && password.equals("admin@cg")) {
			session.setAttribute("email",email);
			response.sendRedirect("admin.jsp");
		}
		else {
			CustomerDAO dao =new CustomerDAO();
			boolean status = false;
			try {
				status = dao.checkLogin(email,password);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(status) {
				session.setAttribute("email",email);
				response.sendRedirect("customer.jsp");
			}
			else {
				request.setAttribute("status", "Invalid Credentials");
				RequestDispatcher dispatcher =request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}
			
		}
		

		
	}

	

}
