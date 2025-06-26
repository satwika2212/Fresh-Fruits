package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.FruitDAO;
import com.model.Fruit;

@WebServlet("/viewfruits")
public class GetAllFruits extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		FruitDAO dao=new FruitDAO();
		List<Fruit> fruitList = null;
		try {
			fruitList = dao.findAll();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("fruitList", fruitList);
		RequestDispatcher dispatcher =request.getRequestDispatcher("adminfruits.jsp");
		dispatcher.forward(request, response);
	}

}
