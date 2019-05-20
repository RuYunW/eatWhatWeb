package com.wry.jdbc.utils;

import java.sql.*;

public class JDBCUtils {
    public static Connection getConnection() throws SQLException,ClassNotFoundException{
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/db_users?characterEncoding=utf-8";
        String username = "root";
        String password = "123456";
//        String password = "MyNewPass4!";

        Connection conn = DriverManager.getConnection(url,username,password);
        return conn;
    }
    public static void release(Statement stmt,Connection conn){
        if(stmt!=null){
            try {
                stmt.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
            stmt=null;
        }
        if(conn!=null){
            try {
                conn.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
            conn=null;
        }
    }
    public static void release(ResultSet rs,Statement stmt,Connection conn){
        if (rs!=null){
            try {
                rs.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
            rs=null;
        }
        release(stmt,conn);

    }
}
