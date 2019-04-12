package com.dao;

import com.domain.Comment;
import com.domain.Contact;
import com.domain.Program;

import java.sql.SQLException;
import java.util.List;

public interface ProgramDao {

    /**
     * 通过model_location找到栏目
     *
     * @param model_location
     * @return
     */
    Program findProgramByModel_Location(String model_location) throws SQLException;

    /**
     * 通过id找到parentid相同的栏目
     *
     * @param id
     * @return
     */
    List<Program> findChildProgram(int id) throws SQLException;


    /**
     * 判断该栏目下有没有栏目
     * @param id
     * @return true:有子栏目 false：没有子栏目
     * @throws SQLException
     */
    boolean isExistChild(int id) throws SQLException;


    /**
     * 通过栏目id在comment表找到栏目下的内容
     *
     * @param programId
     * @return
     */
    List<Comment> findCommentById(int programId) throws SQLException;


    /**
     * 用户在加入我们页面填写的数据插入数据库
     *
     * @param contact
     */
    void insertContact(Contact contact) throws SQLException;


}
