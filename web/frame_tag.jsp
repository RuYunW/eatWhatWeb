<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/3/10
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>今天吃什么？</title>
    <style type="text/css">
        <!--
        @import url(/css/index.css);/*这里是通过@import引用CSS的样式内容*/
        -->
    </style>
</head>


<%--<body style="background:url(../imgs/BG_eat.jpg) no-repeat;background-size:100%;float: bottom;background-attachment: fixed;background-position-y:90%;  ">--%>
<%--<body style="background-size:100%;background-attachment:fixed;background-position-y: 90%; ">--%>
<body>
<%--标题--%>
<div class="title">
    <%--校徽--%>
    <div class="logo"><a href="../index.jsp"><img src="../imgs/logo_sdnu.png" alt="SDNU LOGO" width="90px" height="90px"/></a></div>
    <%--名称--%>
    <div class="name" ><span style="color: white;font-size: larger;">山东吃饭大学</span>&nbsp;
        <br><span style="color: lightgray;">今天吃什么？</span></div>
    <div class="search"><input class="input_search" type="text" placeholder="请输入..." id="search" ></div>

</div>

<%--目录栏--%>
<div class="cate_container" align="center">
    <hr style="width: 100%">
    <div class="category" align="center"><a class="tag" href="../index.jsp">首页</a></div>
    <div class="category" align="center"><a class="tag" href="../tag/tag_random.jsp">随机点餐</a></div>
    <div class="category" align="center"><a class="tag" href="../tag/tag_contact_us.jsp">条件点餐</a></div>
    <div class="category" align="center"><a class="tag" href="../tag/tag_news.jsp">食堂新品</a></div>
    <div class="category" align="center"><a class="tag" href="../tag/tag_resarch.jsp">科学搭配</a></div>
    <div class="category" align="center"><a class="tag" href="../tag/tag_team_members.jsp">菜品一览</a></div>
    <div class="category" align="center"><a class="tag" href="../tag/tag_paper.jsp">意见反馈</a></div>
    <div class="category" align="center"><a class="tag" href="../tag/tag_related_link.jsp">相关链接</a></div>

</div>

</body></html>
