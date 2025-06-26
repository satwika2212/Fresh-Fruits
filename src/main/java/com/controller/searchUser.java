package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CustomerDAO;
import com.model.Customer;

@WebServlet("/searchUser")
public class searchUser extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		
		CustomerDAO dao =new CustomerDAO();
		
		try {
			Customer customer = dao.searchUser(email);
			if(customer.getEmail()!=null) {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("searchCustomer.jsp");
				request.setAttribute("customer", customer);
				dispatcher.forward(request, response);
			}
			else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("searchCustomer.jsp");
				request.setAttribute("status", "customer not found.....");
				dispatcher.forward(request, response);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			}
}
