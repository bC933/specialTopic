package com.util;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class JDBCUtil2 {

    static ComboPooledDataSource dataSource = null;


    static {
        dataSource = new ComboPooledDataSource();
    }

    public static ComboPooledDataSource getDataSource() {
        return dataSource;
    }

    public static Connection getConnect() throws SQLException {
        return dataSource.getConnection();
    }

    public static void realse(ResultSet rs, Statement st, Connection conn) {
        realseRs(rs);
        realseSt(st);
        realseConn(conn);
    }

    public static void realse(Statement st, Connection conn) {
        realseSt(st);
        realseConn(conn);
    }

    private static void realseRs(ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            rs = null;
        } catch (SQLException e) {
            // TODO 自动生成的 catch 块
            e.printStackTrace();
        }
    }

    private static void realseSt(Statement st) {
        try {
            if (st != null) {
                st.close();
            }
            st = null;
        } catch (SQLException e) {
            // TODO 自动生成的 catch 块
            e.printStackTrace();
        }
    }

    private static void realseConn(Connection conn) {
        try {
            if (conn != null) {
                conn.close();
            }
            conn = null;
        } catch (SQLException e) {
            // TODO 自动生成的 catch 块
            e.printStackTrace();
        }
    }

}
