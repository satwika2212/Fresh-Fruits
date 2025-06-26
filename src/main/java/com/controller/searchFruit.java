package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.FruitDAO;
import com.model.Fruit;


@WebServlet("/searchFruit")
public class searchFruit extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		System.out.println(name);
		
		FruitDAO dao =new FruitDAO();
		
		try {
			Fruit fruit = dao.searchFruit(name);
			if(fruit.getName()!=null) {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("searchFruit.jsp");
				request.setAttribute("fruit", fruit);
				dispatcher.forward(request, response);
			}
			else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("searchFruit.jsp");
				request.setAttribute("status", "Fruit not found.....");
				dispatcher.forward(request, response);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			}
}
