package servlet;

import com.wry.dao.UsersDao;
import com.wry.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "doLogin",urlPatterns = "/doLogin")
public class doLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        //从JSP取值
        String u = request.getParameter("username");
        String p = request.getParameter("password");

//         匹配
        UsersDao usersDao = new UsersDao();
        User user = usersDao.find(u);
//         String uname = user.getUsername();

        if(user!=null){
            String passwd = user.getPassword();
            if(p.equals(passwd)){
                String result = "登录成功";
                session.setAttribute("state",result);
                session.setAttribute("username",u);
                session.setAttribute("storeID",user.getManager_store_id());
                //页面跳转
                if(user.getIs_top()==1){
                    //如果是top管理员用户
                    request.getRequestDispatcher("top_manager_page/manager_page.jsp").forward(request,response);
                }
                else {
                    //普通店铺管理员
                    request.getRequestDispatcher("store_manager_page/store_manager_page.jsp").forward(request,response);
                }

            }else{
                String result = "密码错误";
                session.setAttribute("state",result);
//                 request.setAttribute("state",result);
                request.getRequestDispatcher("manager_login.jsp").forward(request,response);
            }
        }else{
            String result = "用户名不存在";
            session.setAttribute("state",result);
            request.getRequestDispatcher("manager_login.jsp").forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
