<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8");%>
<meta charset="UTF-8">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>网站管理界面</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <style type="text/css">
        @import "./css/manager.css";
    </style>
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

</head>

<body style="background:url(./imgs/BG2018.jpg) no-repeat;background-size:100%;background-attachment:fixed;background-position-y: 90%; ">

<br>
<div class="manager_title">今天中午吃什么网站管理界面</div>
<a href="index.jsp" class="manager" style="text-align: center;float: right">返回首页</a>

<br>
<hr>
<br>
<div >
    <%--左边switch--%>
    <div class="tag_switch">

        <a class="manager" href="top_manager_page/manager_page.jsp"><div class="tag_manager">管理主界面</div></a>
        <a class="manager" href="top_manager_page/manager_food.jsp"><div class="tag_manager">菜品管理</div></a>
        <a class="manager" href="top_manager_page/manager_link.jsp"><div class="tag_manager_selected">相关链接管理</div></a>
        <a class="manager" href="top_manager_page/manager_ads.jsp"><div class="tag_manager">广告赞助管理</div></a>
        <a class="manager" href="top_manager_page/manager_diet.jsp"><div class="tag_manager">科学搭配管理</div></a>
        <a class="manager" href="top_manager_page/manager_newfood.jsp"><div class="tag_manager">新上菜品管理</div></a>
        <a class="manager" href="top_manager_page/manager_data.jsp"><div class="tag_manager" >数据查看</div></a>
        <a class="manager" href="top_manager_page/manage_user.jsp"><div class="tag_manager">用户管理</div></a>

    </div>

    <%--中间主界面--%>
    <div class="main">
        jahah

    </div>
</div>

</body>
</html>
