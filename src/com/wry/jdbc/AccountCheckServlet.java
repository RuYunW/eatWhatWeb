package com.wry.jdbc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class AccountCheckServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        //System.out.println("收到了请求"+username);

        PrintWriter out = response.getWriter();
        if(username.equals("newer")){//本来要连接数据库查询，这里为了方便便直接定义。
            out.write("false");
        }else{
            out.write("true");
        }
        out.flush();
    }
}
