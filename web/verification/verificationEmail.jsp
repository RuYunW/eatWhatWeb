<%--
  Created by IntelliJ IDEA.
  User: Ash
  Date: 2019/5/18
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>邮箱验证页</title>
    <style>
        @import url(./css/verificationEmail.css);
    </style>
</head>
<body style="background:url(./imgs/BG2018.jpg) no-repeat;background-size:100%;background-position-y: 90%;">

<br><br>
<%
    if(session.getAttribute("emailResult")==null){

    }else {
        out.println(session.getAttribute("emailResult"));
    }
%>

<hr>
<div style="background-color: rgba(255,255,255,0.5);height:auto;margin: 2%;padding: 5%;padding-left: 10%;padding-right: 10%">
    <center>
<div style="font-family: '等线 Light';font-size: larger">
    <br>
邮件已发送，请注意查收并输入验证码：
</div>
<br>
<form action="MailRight" method="post">
    <input type="text" class="input_box" name="inputCode" placeholder="验证码">
    <input type="submit" class="submit" value="提交">
</form>
<br>
<div style="font-family: '等线 Light';font-size: larger">
    <a href="../store_manager_register.jsp" style="float: right">返回重新输入信息</a>
</div>
    </center>
</div>
</body>
</html>
