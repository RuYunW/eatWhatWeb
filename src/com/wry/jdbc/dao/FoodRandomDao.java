package com.wry.jdbc.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import java.util.ArrayList;

import com.wry.jdbc.domain.Food;
import com.wry.jdbc.domain.User;
import com.wry.jdbc.utils.JDBCUtils;
import jdk.nashorn.internal.scripts.JD;

public class FoodRandomDao {

    //查询所有Food对象
    public ArrayList<Food> findAll(){
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        ArrayList<Food> list = new ArrayList<Food>();
        try {
            //获得数据的连接
            conn = JDBCUtils.getConnection();
            //获得Statement对象
            stmt = conn.createStatement();
            //发送SQL语句
            String sql = "SELECT * FROM tb_food";
            rs = stmt.executeQuery(sql);
            //处理结果集
            while (rs.next()){
                Food food = new Food();
                food.setId(rs.getInt("food_id"));
                food.setFoodname(rs.getString("food_name"));
                food.setFoodprice(rs.getFloat("food_price"));
                food.setFood_store_id(rs.getString("food_store_id"));
                food.setFoodpic(rs.getString("food_pic"));
                food.setStarnum(rs.getInt("star_number"));
                list.add(food);

            }
            return list;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            JDBCUtils.release(rs,stmt,conn);
        }
        return null;
    }

    //根据storeID查找窗口food
    public ArrayList<Food> findStoreFood(String storeID){
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        ArrayList<Food> list = new ArrayList<>();
        try {
            //获得数据的连接
            conn = JDBCUtils.getConnection();
            //获得Statement对象
            stmt = conn.createStatement();
            //发送SQL语句
            String sql = "select * from tb_food where food_store_id='"+storeID+"'";
            rs = stmt.executeQuery(sql);

            //处理结果集
            while (rs.next()){
                Food food = new Food();
                food.setFoodname(rs.getString("food_name"));
                food.setFoodprice(rs.getFloat("food_price"));
                food.setStarnum(rs.getInt("star_number"));
//                food.setPassword(rs.getString("password"));
                list.add(food);
            }
            return list;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            JDBCUtils.release(rs,stmt,conn);
        }
        return null;
    }

    //增加记录
    public boolean insert(Food food){
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            conn = JDBCUtils.getConnection();
            stmt = conn.createStatement();
            String sql = "insert into tb_food (food_id,food_name,food_price,food_store_id,food_pic) values('"
                    +food.getId()+"','"
                    +food.getFoodname() +"','"
                    +food.getFoodprice()+"','"
                    +food.getFood_store_id()+"','"
                    +food.getFoodpic()+"')";
            int num = stmt.executeUpdate(sql);
            if (num>0){
                return true;
            }
            return false;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            JDBCUtils.release(rs,stmt,conn);
        }
        return false;
    }
    //获取总表条目数
    public int countItem(){
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
//        ArrayList<Food> list = new ArrayList<Food>();
        try {
            //获得数据的连接
            conn = JDBCUtils.getConnection();
            //获得Statement对象
            stmt = conn.createStatement();
            //发送SQL语句
            String sql = "SELECT COUNT(*) FROM tb_food";
            rs = stmt.executeQuery(sql);
            rs.next();
            int count = rs.getInt(1);
            return count;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            JDBCUtils.release(rs,stmt,conn);
        }
        return 0;
    }

}
