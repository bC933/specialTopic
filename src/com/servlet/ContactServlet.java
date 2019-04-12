package com.servlet;

import com.domain.Contact;
import com.service.ProgramService;
import com.service.impl.ProgramServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ContactServlet", urlPatterns = "/ContactServlet")
public class ContactServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String telephone = request.getParameter("telephone");
        String message = request.getParameter("message");


        try {
            ProgramService service = new ProgramServiceImpl();
            service.insertContact(new Contact(name, email, telephone, message));
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
