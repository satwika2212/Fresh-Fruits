package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.FruitDAO;

/**
 * Servlet implementation class DeleteFruit
 */
@WebServlet("/deletefruit")
public class DeleteFruit extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String name=request.getParameter("name");
		
		FruitDAO dao =new FruitDAO();
		
		try {
			
			dao.deleteFruit(name);
			dao.commit();
			response.sendRedirect("viewfruits");
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
}
