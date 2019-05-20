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
        @import url(css/index.css);/*这里是通过@import引用CSS的样式内容*/
        -->
    </style>
</head>


<body class="body">
<%--<body style="background-size:100%;background-attachment:fixed;background-position-y: 90%; ">--%>
<%--<%@include file="frame_tag.jsp"%>--%>
<%--标题--%>
<div class="title">
    <%--校徽--%>
    <div class="logo"><a href="index.jsp"><img src="imgs/logo_sdnu.png" alt="SDNU LOGO" width="90px" height="90px"/></a></div>
    <%--名称--%>
    <div class="name" ><span style="color: white;font-size: larger;">山东吃饭大学</span>&nbsp;
        <br><span style="color: lightgray;">今天吃什么？</span></div>
    <div class="search"><input class="input_search" type="text" placeholder="请输入..." id="search" ></div>

</div>

<%--目录栏--%>
<div class="cate_container" align="center">
    <hr style="width: 100%">
    <div class="category" align="center"><a class="tag" href="index.jsp">首页</a></div>
    <div class="category" align="center"><a class="tag" href="tag/tag_random.jsp">随机点餐</a></div>
    <div class="category" align="center"><a class="tag" href="tag/tag_contact_us.jsp">条件点餐</a></div>
    <div class="category" align="center"><a class="tag" href="tag/tag_news.jsp">食堂新品</a></div>
    <div class="category" align="center"><a class="tag" href="tag/tag_resarch.jsp">科学搭配</a></div>
    <div class="category" align="center"><a class="tag" href="tag/tag_team_members.jsp">菜品一览</a></div>
    <div class="category" align="center"><a class="tag" href="tag/tag_paper.jsp">意见反馈</a></div>
    <div class="category" align="center"><a class="tag" href="tag/tag_related_link.jsp">相关链接</a></div>

</div>
<%--主体--%>
<div class="container"  >
    <%--左边--%>
    <div class="left">
        <div class="left_1"><a class="sub_title" href="">新上菜品</a></div>
        <div class="left_2"><a class="link" href="news/news_1.jsp" >一餐新品鱼豆腐面 </a></div>
        <div class="left_1"><a class="sub_title" href="">科学搭配</a></div>
        <div class="left_2"><a class="link">王汝芸真俊</a></div>
    </div>

    <%--右边--%>
    <div class="right">
        <div class="left_1"><a class="sub_title" href="">广告赞助</a></div>
        <div class="right_1"><a class="link">王汝芸真俊</a></div>
        <div class="left_1"><a class="sub_title" href="">相关连接</a></div>
        <div class="right_1"><a class="link">
            <a class="link" href="http://www.sdnu.edu.cn/">山东师范大学官网</a>
            <br>
            <a class="link" href="http://csgjjlc.sdnu.edu.cn/index.htm">山东师范大学信息科学与工程学院官网</a>
            <br>
            <a class="link" href="http://www.bkjy.sdnu.edu.cn/">山东师范大学教务处</a>
            <br>
            <a class="link" href="http://www.qlshx.sdnu.edu.cn/">山东师范大学新闻网</a>



        </a></div>
        <div class="left_1"><a class="sub_title" href="tag/tag_contact_us.jsp">意见反馈</a></div>
        <div class="right_2"><a class="link">王汝芸真俊</a></div>
    </div>
</div>

<div class="bottom"><a class="access" href="manager_login.jsp">管理员入口</a></div>
</body></html>
