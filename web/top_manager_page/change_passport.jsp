<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/4/26
  Time: 0:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
    <style type="text/css">
        @import "../css/manager.css";
    </style>
</head>
<body>
<br><br><br>
修改密码

<%--修改密码--%>
<center>
<div>
    <form action="doChangePassport.jsp">
<input type="text" class="input_search" placeholder="请输入原密码" name="te_password">
<br>
    <input type="text" class="input_search" placeholder="请输入新密码" name="new_password"><br>
    <input type="text" class="input_search" placeholder="请再次输入新密码" name="te_new_password">
        <br><input type="submit" value="提交">

    </form></div></center>

</body>
</html>
