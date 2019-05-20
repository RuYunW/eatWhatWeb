package servlet;

import com.wry.jdbc.dao.UsersDao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 判断用户名是否重复
 */
@WebServlet("/Check_username")
public class Check_username extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        //获取用户输入的数据
        String name = request.getParameter("username");
        System.out.println(name);
        //正常情况下，这里的数据应该是要从数据库中的查询出来的，但是我们这里是为了展示一下Ajax，所以就先写死了
        UsersDao usersDao = new UsersDao();

        if(usersDao.find(name)==null) {//判断用户名是否存在
            out.print(false);
        }else {
            out.print(true);
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }

}
