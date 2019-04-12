package com.service.impl;

import com.dao.ProgramDao;
import com.dao.impl.ProgramDaoImpl;
import com.domain.Comment;
import com.domain.Contact;
import com.domain.Program;
import com.service.ProgramService;

import java.sql.SQLException;
import java.util.List;

public class ProgramServiceImpl implements ProgramService {


    @Override
    public Program findProgramByModel_Location(String model_location) throws SQLException {

        ProgramDao dao = new ProgramDaoImpl();

        return dao.findProgramByModel_Location(model_location);
    }

    @Override
    public List<Program> findChildProgram(int id) throws SQLException {

        ProgramDao dao = new ProgramDaoImpl();

        List<Program> childProgram = dao.findChildProgram(id);

        return childProgram;


    }

    @Override
    public boolean isExistChild(int id) throws SQLException {

        ProgramDao dao = new ProgramDaoImpl();

        return dao.isExistChild(id);
    }

    @Override
    public List<Comment> findCommentById(int programId) throws SQLException {
        ProgramDao dao = new ProgramDaoImpl();

        return dao.findCommentById(programId);
    }

    @Override
    public void insertContact(Contact contact) throws SQLException {
        ProgramDao dao = new ProgramDaoImpl();

        dao.insertContact(contact);
    }
}
