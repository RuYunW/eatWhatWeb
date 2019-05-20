<%@ page import="com.wry.jdbc.dao.UsersDao" %>
<%@ page import="com.wry.jdbc.domain.User" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/4/26
  Time: 0:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String te_password = request.getParameter("te_password");
    UsersDao usersDao = new UsersDao();
    User user = usersDao.find((String)session.getAttribute("username"));
    if(user.getPassword().equals(te_password)){
        out.print("密码正确");
    }else {
        out.print("密码错误");
    }
%>
</body>
</html>
