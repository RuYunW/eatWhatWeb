<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/5/15
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>店铺管理员注册</title>
    <style>
        @import url(css/store_manager_register.css);
    </style>

</head>
<body style="background:url(imgs/BG2018.jpg) no-repeat;background-size:100%;background-position-y: 90%;" >
<br>
<%
    if(session.getAttribute("register_result")!=null){
        out.println(session.getAttribute("register_result"));
    }
%>
<br>
<br>
<hr>
<center>
<div style="background-color: rgba(255,255,255,0.6);width: 50%;text-align: center;margin: 2%;padding: 2%;">
<div style="margin: 2%;padding-left: 5%;text-align: left"><center>
<form action="Register" method="post">
    <table>

        <tr><td>用户名：</td><td><input class="input_search" type="text" placeholder="用户名" name="manager_username" /></td></tr>

				<%--<span style="font-family:等线;font-size: larger;color: gray">密码</span>--%>
        <tr><td>密码：</td><td><input class="input_search" type="password" placeholder="长度不小于6位" name="manager_password" /></td></tr>

        <tr><td>确认密码：</td><td><input class="input_search" placeholder="请再次输入密码" type="password" name="proof_manager_password"></td></tr>

        <tr><td>验证邮箱：</td><td><input class="input_search" placeholder="请输入邮箱" type="text" name="manager_email"></td></tr>

    </table>
    <input class="login" type="submit" value="提交">
</form></center>
</div>
</div>
</center>

</body>
</html>
