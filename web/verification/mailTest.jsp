<%@ page language="java"%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8");%>
<meta charset="UTF-8">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>
<%
    // 以下变量为用户根据自己的情况设置
    String smtphost = "smtp.163.com"; // 发送邮件服务器
    String user = "eatwhatmail@163.com"; // 邮件服务器登录用户名
    String password = "eatwhat1"; // 邮件服务器登录密码
    String from = "eatwhatmail@163.com"; // 发送人邮件地址
    String to = "yunyunzhongsheng21@163.com"; // 接受人邮件地址
    String subject = "JavaMail 电子邮件发送系统测试"; // 邮件标题
    String body = "JavaMail 电子邮件发送系统"; // 邮件内容

// 以下为发送程序，用户无需改动
    try {
//初始化Properties类对象
        Properties props = new Properties();
//设置mail.smtp.host属性
        props.put("mail.smtp.host", smtphost);
//设置使用验证
        props.put("mail.smtp.auth","true");
// 获取非共享的session对象
        Session ssn= Session.getInstance(props,null);
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
%>
<p>你的邮件已发送，请返回。</p>
<%
    } catch(Exception m) //捕获异常
    {
        out.println(m.toString());
        m.printStackTrace();
    }
%>
</body>
</html>
