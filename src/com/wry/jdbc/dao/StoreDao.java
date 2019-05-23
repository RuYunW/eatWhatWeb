package com.wry.jdbc.dao;

import com.wry.jdbc.domain.Store;
import com.wry.jdbc.domain.User;
import com.wry.jdbc.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class StoreDao {
    //根据store_id查找指定的store
    public Store find(String StoreID) {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            //获得数据的连接
            conn = JDBCUtils.getConnection();
            //获得Statement对象
            stmt = conn.createStatement();
            //发送SQL语句
            String sql = "select * from tb_store where store_id='" + StoreID + "';";
            rs = stmt.executeQuery(sql);
            //处理结果集
            while (rs.next()) {
                Store store = new Store();
                store.setStoreLoc(rs.getString("store_loc"));
                store.setStoreName(rs.getString("store_name"));

                return store;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.release(rs, stmt, conn);
        }
        return null;
    }

    //注册店铺
    public boolean insert(Store store) {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            conn = JDBCUtils.getConnection();
            stmt = conn.createStatement();
            String sql = "insert into tb_store (store_id,store_name,store_loc) values('"
                    + store.getStoreId() + "','"
                    + store.getStoreName() + "','"
                    + store.getStoreLoc() + "')";
            int num = stmt.executeUpdate(sql);
            if (num > 0) {
                return true;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            JDBCUtils.release(rs, stmt, conn);
        }
        return false;
    }
}
