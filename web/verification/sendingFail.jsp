<%--
  Created by IntelliJ IDEA.
  User: Ash
  Date: 2019/5/19
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8");%>
<meta charset="UTF-8">
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if(session.getAttribute("emailResult")==null){

    }else {
        out.println(session.getAttribute("emailResult"));
    }
%>
<a href="../store_manager_register.jsp" style="float: right">返回重新输入信息</a>
</body>
</html>
