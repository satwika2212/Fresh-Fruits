package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.FruitDAO;
import com.model.Fruit;

/**
 * Servlet implementation class SaveFruit
 */
@WebServlet("/savefruit")
public class SaveFruit extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Fruit fruit = new Fruit();
		fruit.setName(request.getParameter("name"));
		fruit.setPrice(Integer.parseInt(request.getParameter("price")));
		fruit.setDesc(request.getParameter("description"));
		fruit.setUrl(request.getParameter("imgurl"));
		
		FruitDAO dao = new FruitDAO();
		RequestDispatcher dispatcher = request.getRequestDispatcher("fruitregister.jsp");
		
		
		try {
            boolean status = dao.saveFruit(fruit);
            if (status) {
                dao.commit();
                request.setAttribute("status", "New Fruit added Successful!");
            } else {
                dao.rollback();
                request.setAttribute("status", "Failed to add new Fruit");
            }
        } catch (Exception e) {
            try {
                dao.rollback();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            request.setAttribute("status", "Error: " + e.getMessage());
            e.printStackTrace();
        }

        dispatcher.forward(request, response);
	}

}
