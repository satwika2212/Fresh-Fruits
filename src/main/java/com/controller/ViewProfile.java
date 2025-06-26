package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.CustomerDAO;
import com.model.Customer;



@WebServlet("/findByEmail")
public class ViewProfile extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		HttpSession session=request.getSession(true);
		String email=(String)session.getAttribute("email");
		
		CustomerDAO dao =new CustomerDAO();
		
		try {
			Customer customer = dao.searchCustomer(email);
			RequestDispatcher dispatcher = request.getRequestDispatcher("viewprofile.jsp");
			request.setAttribute("customer", customer);
			dispatcher.forward(request, response);
			
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	

}
