<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/4/24
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        @import "../css/manager.css";
    </style>
</head>
<body style="background:url(../imgs/BG2018.jpg) no-repeat;background-size:100%;background-attachment:fixed;background-position-y: 90%; ">

<%@include file="../frame_manager_tag.jsp"%>

<%--中间主界面--%>
<div class="main">
    <%=session.getAttribute("testResult")%>
<%--    --%>
</div>

</body>
</html>
