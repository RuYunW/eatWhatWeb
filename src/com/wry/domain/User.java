package com.wry.domain;
import java.util.*;
public class User {
    private int id;
    private String username;
    private String password;
    private String avatar;
    private String email;
    private String manager_store_id;
    private int is_top;

    public int getIs_top() {
        return is_top;
    }

    public void setIs_top(int is_top) {
        this.is_top = is_top;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getManager_store_id() {
        return manager_store_id;
    }

    public void setManager_store_id(String manager_store_id) {
        this.manager_store_id = manager_store_id;
    }
}
