<%--
  Created by IntelliJ IDEA.
  User: Ash
  Date: 2019/5/19
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8");%>
<meta charset="UTF-8">
<html>
<head>
    <title>邮箱验证成功</title>

    <style>
        @import url(./css/index.css);
    </style>

</head>
<body style="background:url(./imgs/BG2018.jpg) no-repeat;background-size:100%;background-position-y: 90%;">
<div style="font-family: '等线 Light';font-size: larger;background-color: rgba(255,255,255,0.5);margin: 2%;padding: 5%;padding-left: 10%;padding-right: 10%;">
    <center>
        <div style="font-size: xx-large">恭喜，验证成功</div>
<br>
<a href="./verification/fillDetailInfo.jsp">前往填写详细信息，完成注册</a>
    </center>
</div>
</body>
</html>
