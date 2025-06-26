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
import com.dao.FruitDAO;
import com.model.Customer;
import com.model.Fruit;

/**
 * Servlet implementation class EditFruit
 */
@WebServlet("/editcustomer")
public class Editcustomer extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Customer customer = new Customer();
		customer.setName(request.getParameter("name"));
		customer.setEmail(request.getParameter("email"));
		customer.setAge(Integer.parseInt(request.getParameter("age")));
		customer.setGender(request.getParameter("gender"));
		customer.setMobile(request.getParameter("mobile"));
		
		customer.setAddress(request.getParameter("address"));
		
		
		
		CustomerDAO dao=new CustomerDAO();
		try {
			boolean status = dao.updatcustomer(customer);
			
			if(status) {
				dao.commit();
				response.sendRedirect("viewcustomers");
				
			}
			else {
				dao.rollback();
				RequestDispatcher dispatcher=request.getRequestDispatcher("editcustomer.jsp");
				request.setAttribute("status", "updation Failed");
				dispatcher.forward(request, response);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
