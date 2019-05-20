package servlet;

import com.wry.jdbc.dao.StoreManagerDao;
import com.wry.jdbc.dao.UsersDao;
import com.wry.jdbc.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//用于注册用户时的用户名重复判断、密码长度判断及邮箱验证
@WebServlet(name = "Register", urlPatterns = "/Register")
public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        String username = request.getParameter("manager_username");
        String password = request.getParameter("manager_password");
        String rePassword = request.getParameter("proof_manager_password");
        String email = request.getParameter("manager_email");

        StoreManagerDao storeManagerDao = new StoreManagerDao();
        User user = storeManagerDao.findName(username);
        if (user != null) {
            //如果返回不为空，则重名,留在原地
            session.setAttribute("registerResult", "用户名重复");
            request.getRequestDispatcher("store_manager_register.jsp").forward(request, response);

        }
        else if (password.length() < 6) {
            //密码长度小于6位,留在原地
            session.setAttribute("register_result", "密码长度不足6位");
            request.getRequestDispatcher("store_manager_register.jsp").forward(request, response);
        }
        else if (!rePassword.equals(password)) {
            //两次密码输入不一致
            session.setAttribute("register_result", "两次密码输入不一致，请检查");
        }
        else {
            //密码长度大于6位，也无用户名冲突
            //可以验证邮箱了
            session.setAttribute("register_username", (String)request.getParameter("manager_username"));
            session.setAttribute("register_password", (String)request.getParameter("manager_password"));
            session.setAttribute("username",request.getParameter("manager_username"));
            //发邮件
//                response.sendRedirect("MailSending");
            request.getRequestDispatcher("/MailSending").forward(request, response);
//                request.getRequestDispatcher("verification/verificationEmail.jsp").forward(request,response);
        }
}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
