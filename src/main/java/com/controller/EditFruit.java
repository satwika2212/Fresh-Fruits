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

/**
 * Servlet implementation class EditFruit
 */
@WebServlet("/editfruit")
public class EditFruit extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Fruit fruit = new Fruit();
		fruit.setName(request.getParameter("name"));
		fruit.setPrice(Integer.parseInt(request.getParameter("price")));
		fruit.setDesc(request.getParameter("desc"));
		fruit.setUrl(request.getParameter("url"));
		
		
		
		FruitDAO dao=new FruitDAO();
		try {
			boolean status = dao.updatefruit(fruit);
			
			if(status) {
				dao.commit();
				response.sendRedirect("viewfruits");
				
			}
			else {
				dao.rollback();
				RequestDispatcher dispatcher=request.getRequestDispatcher("editfruit.jsp");
				request.setAttribute("status", "updation Failed");
				dispatcher.forward(request, response);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
