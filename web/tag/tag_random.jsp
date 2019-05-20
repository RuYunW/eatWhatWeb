<%@ page import="com.wry.jdbc.domain.Food" %>
<%@ page import="com.wry.jdbc.dao.FoodRandomDao" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/3/10
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>随机点餐</title>
    <style type="text/css">
        <!--
        @import url(../css/index.css);/*这里是通过@import引用CSS的样式内容*/
        @import url(../css/tag_random.css);
        @import url(../css/index.css);
        -->
    </style>
</head>

<body class="body">
<%@include file="../frame_tag.jsp"%>
<%
    FoodRandomDao foodRandomDao = new FoodRandomDao();
    ArrayList<Food> list = foodRandomDao.findAll();
    foodRandomDao.findAll();
    int item_num = list.size();
    int rand_num = (int)(Math.random()*item_num);//随机第X条
//    out.print(list.get((rand_num)).getFoodname());
%>
<div class="title_continer">
    刷新获取随机菜品
</div>
<div class="background">

    <div class="random_font">
        <%=list.get(rand_num).getFoodname()%>
    </div>
    <a href="javascript:location.reload();">
        刷新
    </a>

</div>


</body>
</html>
