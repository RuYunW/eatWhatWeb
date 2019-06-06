package servlet;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

@WebServlet(name = "MailSending", urlPatterns = "/MailSending")
public class MailSending extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(true);
        // 以下变量为用户根据自己的情况设置
        String smtphost = "smtp.163.com"; // 发送邮件服务器
        String user = "eatwhatmail@163.com"; // 邮件服务器登录用户名
        String password = "eatwhat1"; // 邮件服务器登录密码
        String from = "eatwhatmail@163.com"; // 发送人邮件地址
//        -------------------
        String to = request.getParameter("manager_email"); // 接收人邮件地址
        String subject = "eatWhat店铺管理员注册验证邮件"; // 邮件标题

        String veriCode = "" + (int) (Math.random() * 10) + (int) (Math.random() * 10) + (int) (Math.random() * 10) + (int) (Math.random() * 10);
        session.setAttribute("veriCode", veriCode);
        String body = "验证码为：" + session.getAttribute("veriCode")+"\n\n此邮件由系统自动发送，请勿直接回复。"; // 邮件内容

    // 以下为发送程序，用户无需改动
        try {
            //初始化Properties类对象
            Properties props = new Properties();
            //设置mail.smtp.host属性
            props.put("mail.smtp.host", smtphost);
            //设置使用验证
            props.put("mail.smtp.auth", "true");
            // 获取非共享的session对象
            Session ssn = Session.getInstance(props, null);
            //创建一个默认的MimeMessage对象。
            MimeMessage message = new MimeMessage(ssn);
            //创建InternetAddress对象
            InternetAddress fromAddress = new InternetAddress(from);
            //设置From: 头部的header字段
            message.setFrom(fromAddress);
            //创建InternetAddress对象
            InternetAddress toAddress = new InternetAddress(to);
            //设置 To: 头部的header字段
            message.addRecipient(Message.RecipientType.TO, toAddress);
            //设置 Subject: header字段
            message.setSubject(subject);
            // 现在设置的实际消息
            message.setText(body);
            //定义发送协议
            Transport transport = ssn.getTransport("smtp");
            //建立与服务器的链接
            transport.connect(smtphost, user, password);
            //发送邮件
            transport.sendMessage(message, message.getRecipients(Message.RecipientType.TO));
            //transport.send(message);
            //关闭邮件传输
            transport.close();
            //发送成功
            session.setAttribute("manager_email",(String)request.getParameter("manager_email"));
            request.getRequestDispatcher("verification/verificationEmail.jsp").forward(request, response);
        } catch (Exception m) //捕获异常
        {
            //发送失败
            session.setAttribute("emailResult","发送失败，请检查邮箱填写");
            request.getRequestDispatcher("verification/sendingFail.jsp").forward(request, response);
            PrintWriter out = response.getWriter();
            out.println(m.toString());
            m.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
