package com.wry.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import java.util.ArrayList;

import com.wry.domain.User;
import com.wry.utils.MySQL_JDBCUtils;

//注册用户
public class UsersDao {
    public boolean insert(User user){
        System.out.println("userInser1 doing");
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            System.out.println("userInsert try doing");
            conn = MySQL_JDBCUtils.getConnection();
            stmt = conn.createStatement();
            System.out.println("userInsert sql doing");
            String sql = "INSERT INTO tb_store_manager (id,username,password,manager_store_id,email) VALUES('"+
                    user.getId()+"','"+
                    user.getUsername()+"','"+
                    user.getPassword()+"','"+
                    user.getManager_store_id()+"','"+
                    user.getEmail()+"')";
            int num;
            num = stmt.executeUpdate(sql);
            if (num>0){
                System.out.println("user insert done");
                return true;
            }
            return false;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            MySQL_JDBCUtils.release(rs,stmt,conn);
        }
        return false;
    }

    //查询所有user对象
    public ArrayList<User> findAll(){
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        ArrayList<User> list = new ArrayList<User>();
        try {
            //获得数据的连接
            conn = MySQL_JDBCUtils.getConnection();
            //获得Statement对象
            stmt = conn.createStatement();
            //发送SQL语句
            String sql = "SELECT * FROM tb_store_manager";
            rs = stmt.executeQuery(sql);
            //处理结果集
            while (rs.next()){
                User user = new User();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setIs_top(rs.getInt("is_top"));
                list.add(user);
            }
            return list;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            MySQL_JDBCUtils.release(rs,stmt,conn);
        }
        return null;
    }

    //根据username查找指定的user
    public User find(String username){
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            //获得数据的连接
            conn = MySQL_JDBCUtils.getConnection();
            //获得Statement对象
            stmt = conn.createStatement();
            //发送SQL语句
            String sql = "select * from tb_store_manager where username='"+username+"'";
            rs = stmt.executeQuery(sql);

            //处理结果集
            while (rs.next()){
                User user = new User();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setIs_top(rs.getInt("is_top"));
                user.setManager_store_id(rs.getString("manager_store_id"));
                return user;
            }
            return null;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            MySQL_JDBCUtils.release(rs,stmt,conn);
        }
        return null;
    }

    //删除用户
    public boolean delete(String username){
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            //获得数据的连接
            conn = MySQL_JDBCUtils.getConnection();
            //获得Statement对象
            stmt = conn.createStatement();
            //发送SQL语句
            String sql = "DELETE FROM tb_store_manager WHERE username='" + username+"'";
            int num = stmt.executeUpdate(sql);
            if (num > 0) {
                return true;
            }
            return false;
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            MySQL_JDBCUtils.release(rs,stmt,conn);
        }
        return false;
    }

    //修改用户密码
    public boolean update(User user){
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            //获得数据的连接
            conn = MySQL_JDBCUtils.getConnection();
            //获得Statement对象
            stmt = conn.createStatement();
            //发送SQL语句
            String sql = "UPDATE tb_store_manager SET password='"+user.getPassword()
                    +"' WHERE username='"+user.getUsername()+"'";
            int num = stmt.executeUpdate(sql);
            if (num > 0) {
                return true;
            }
            return false;
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            MySQL_JDBCUtils.release(rs,stmt,conn);
        }
        return false;

    }

    //根据userID查找
    public ArrayList<User> findAllID(String userID){
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        ArrayList<User> list = new ArrayList<>();
        try {
            //获得数据的连接
            conn = MySQL_JDBCUtils.getConnection();
            //获得Statement对象
            stmt = conn.createStatement();
            //发送SQL语句
            String sql = "select * from tb_store_manager where id like'"+userID+"'";
            rs = stmt.executeQuery(sql);
            //处理结果集
            while (rs.next()){
                User user = new User();
                list.add(user);
            }
            return list;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            MySQL_JDBCUtils.release(rs,stmt,conn);
        }
        return null;
    }
}
