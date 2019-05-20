package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "MailRight",urlPatterns = "/MailRight")
public class MailRight extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String inputCode = request.getParameter("inputCode");
        if(inputCode.equals(session.getAttribute("veriCode"))){
            request.getRequestDispatcher("verification/registerSuccess.jsp").forward(request,response);
        }
        else {
            session.setAttribute("emailResult","验证码错误");
            request.getRequestDispatcher("verification/verificationEmail.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
