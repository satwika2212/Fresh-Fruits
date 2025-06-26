package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.CustomerDAO;
import com.model.Customer;

@WebServlet("/saveuser")
public class SaveUser extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Customer customer = new Customer();
        customer.setName(request.getParameter("name"));
        customer.setEmail(request.getParameter("email"));
        customer.setPassword(request.getParameter("password"));
        customer.setAge(Integer.parseInt(request.getParameter("age")));
        customer.setGender(request.getParameter("gender"));
        customer.setMobile(request.getParameter("mobile"));
        customer.setAddress(request.getParameter("address"));

        CustomerDAO dao = new CustomerDAO();
        RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");

        try {
            boolean status = dao.saveuser(customer);
            if (status) {
                dao.commit();
                request.setAttribute("status", "Registration Successful!");
            } else {
                dao.rollback();
                request.setAttribute("status", "Registration Failed.");
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
