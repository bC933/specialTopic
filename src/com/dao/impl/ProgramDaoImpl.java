package com.dao.impl;

import com.dao.ProgramDao;
import com.domain.Comment;
import com.domain.Contact;
import com.domain.Program;
import com.util.JDBCUtil2;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

import static oracle.jrockit.jfr.events.Bits.intValue;

public class ProgramDaoImpl implements ProgramDao {
    @Override
    public Program findProgramByModel_Location(String model_location) throws SQLException {

        QueryRunner runner = new QueryRunner(JDBCUtil2.getDataSource());

        return runner.query("select * from programe where model_location=?", new BeanHandler<Program>(Program.class), model_location);
    }

    @Override
    public List<Program> findChildProgram(int id) throws SQLException {

        QueryRunner runner = new QueryRunner(JDBCUtil2.getDataSource());

        return runner.query("select * from programe where parent_id=?", new BeanListHandler<Program>(Program.class), id);
    }

    @Override
    public boolean isExistChild(int id) throws SQLException {

        QueryRunner runner = new QueryRunner(JDBCUtil2.getDataSource());

        Long query = (Long) runner.query("select count(*) from programe where parent_id=?", new ScalarHandler(), id);
        return query.intValue() > 0;
    }

    @Override
    public List<Comment> findCommentById(int programId) throws SQLException {

        QueryRunner runner = new QueryRunner(JDBCUtil2.getDataSource());

        return runner.query("select * from comment where programeId=?", new BeanListHandler<Comment>(Comment.class), programId);
    }

    @Override
    public void insertContact(Contact contact) throws SQLException {

        QueryRunner runner = new QueryRunner(JDBCUtil2.getDataSource());

        runner.update("insert into contact values(null,?,?,?,?)", contact.getName(), contact.getEmail(), contact.getTelephone(), contact.getMessage());

    }
}
