<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/4/24
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        @import "css/manager.css";
    </style>
</head>

<body style="background:url(imgs/BG2018.jpg) no-repeat;background-size:100%;background-attachment:fixed;background-position-y: 90%; ">

<br>
<div class="manager_title">今天中午吃什么网站管理界面</div>
<a href="index.jsp" class="manager" style="text-align: center;float: right">返回首页</a>

<br>
<hr>
<br>
<div >
    <%--左边switch--%>
    <div class="tag_switch">

        <a class="manager" href="manager_page.jsp"><div class="tag_manager_selected">管理主界面</div></a>
        <a class="manager" href="manager_page/manager_food"><div class="tag_manager">菜品管理</div></a>
        <a class="manager" href="manager_page/manage_link.jsp"><div class="tag_manager">相关链接管理</div></a>
        <a class="manager" href="manager_page/manage_ads.jsp"><div class="tag_manager">广告赞助管理</div></a>
        <a class="manager" href="manager_page/manage_member.jsp"><div class="tag_manager">科学搭配管理</div></a>
        <a class="manager" href="manager_page/manage_papers.jsp"><div class="tag_manager">新上菜品管理</div></a>
        <a class="manager" href="manager_page/manage_data.jsp"><div class="tag_manager" >数据查看</div></a>
        <a class="manager" href="manager_page/manage_user.jsp"><div class="tag_manager">用户管理</div></a>

    </div>

</div>
</body>
</html>

