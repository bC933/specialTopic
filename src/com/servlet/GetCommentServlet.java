package com.servlet;

import com.domain.Comment;
import com.domain.Program;
import com.service.ProgramService;
import com.service.impl.ProgramServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "GetCommentServlet", urlPatterns = "/getComment")
public class GetCommentServlet extends HttpServlet {

    static ProgramService service;

    static {
        service = new ProgramServiceImpl();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("来了一次请求");

        try {


            String model_location = request.getParameter("model_Location");

            if (model_location == null) model_location = "index1";


            Program program = service.findProgramByModel_Location(model_location);

            List<Program> programs = new ArrayList<>();

            programs = findChildProgram(programs, program);
            programs.add(program);

            List<Comment> comments;

            for (Program p : programs
            ) {
                comments = service.findCommentById(p.getId());
                request.setAttribute(p.getModel_location() + "Value", p.getValue());
                request.setAttribute(p.getModel_location(), comments);
            }

            request.getRequestDispatcher(model_location + ".jsp").forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    private List<Program> findChildProgram(List<Program> programs, Program program) throws SQLException {


        if (service.isExistChild(program.getId())) {
            for (Program p : service.findChildProgram(program.getId())
            ) {
                programs.add(p);
                findChildProgram(programs, p);
            }
        }

        return programs;
    }

}
