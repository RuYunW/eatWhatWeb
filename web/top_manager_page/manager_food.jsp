<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ page import="com.wry.jdbc.dao.FoodRandomDao,com.wry.jdbc.domain.Food" %>
<%@ page import="com.wry.jdbc.domain.Store" %>
<%@ page import="com.wry.jdbc.dao.StoreDao" %>



<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% request.setCharacterEncoding("UTF-8");%>
<meta http-equiv="content-type" content="text/css;charset=UTF-8">
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
        @import "css/manager.css";
    </style>
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

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

        <a class="manager" href="top_manager_page/manager_page.jsp"><div class="tag_manager">管理主界面</div></a>
        <a class="manager" href="top_manager_page/manager_food.jsp"><div class="tag_manager_selected">菜品管理</div></a>
        <a class="manager" href="top_manager_page/manager_link.jsp"><div class="tag_manager">相关链接管理</div></a>
        <a class="manager" href="top_manager_page/manager_ads.jsp"><div class="tag_manager">广告赞助管理</div></a>
        <a class="manager" href="top_manager_page/manager_diet.jsp"><div class="tag_manager">科学搭配管理</div></a>
        <a class="manager" href="top_manager_page/manager_newfood.jsp"><div class="tag_manager">新上菜品管理</div></a>
        <a class="manager" href="top_manager_page/manager_data.jsp"><div class="tag_manager" >数据查看</div></a>
        <a class="manager" href="top_manager_page/manage_user.jsp"><div class="tag_manager">用户管理</div></a>

    </div>

    <%--中间主界面--%>
    <div class="main">


<%--        显示所有菜品详细信息--%>
            <div style="background: rgba(255,255,255,0.3);width:35%;height:auto;float: left;margin: 10px;padding: 10px">
            <table style="font-family: '等线 Light';font-size:larger;text-align: left;margin-left: 5%;margin-top: 5%;">
                <tr>
                    <%--<th>编号</th>--%>
                    <th>名称</th><th>价格</th><th>店铺编码</th><th>店铺名称</th><th>具体位置</th>
                </tr>
<%--                打印表格--%>
                <%
                    FoodRandomDao foodRandomDao = new FoodRandomDao();
                    ArrayList<Food> list = foodRandomDao.findAll();
//                    Store store = new Store();
                    StoreDao storeDao = new StoreDao();
                    for(int i=0;i<list.size();i++){
//                out.println(list.get(i).getFoodname()+"   "+list.get(i).getFoodloc()+"   "+list.get(i).getFoodprice()+"<br>");
                        out.print("<tr>"
//                        +"<td>"+list.get(i).getId()+"</td>"
                                +"<td>"+list.get(i).getFoodname()+"</td>"
                                +"<td>"+list.get(i).getFoodprice()+"</td>"
                                +"<td>"+list.get(i).getFood_store_id()+"</td>"
                                +"<td>"+storeDao.find(list.get(i).getFood_store_id()).getStoreName()+"</td>"
                                +"<td>"+storeDao.find(list.get(i).getFood_store_id()).getStoreLoc()+"</td>"
                                +"</tr>");
                    }
//            for(int a:list)System.out.println(a);
                %>
            </table></div>
            <br>

<%--            <div style="float: right;background: rgba(255,255,255,0.3);padding: 10px;margin: 10px;">--%>
<%--                <form action="manager_page/data_insert.jsp">--%>
<%--                    插入--%>
<%--            <table>--%>
<%--            <tr>--%>
<%--                <th>食物名称</th>--%>
<%--                <th>食堂位置</th>--%>
<%--                <th>具体位置</th>--%>
<%--                <th>价格</th>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td><input type="text" name="foodname"></td>--%>
<%--                <td><input type="text" name="foodloc"></td>--%>
<%--                <td><input type="text" name="detailloc"></td>--%>
<%--                <td><input type="text" name="foodprice"></td>--%>
<%--            </tr>--%>
<%--        </table>--%>
<%--            <br>--%>
<%--            <input type="submit" value="插入">--%>
<%--        </form></div>--%>
<%--    </div>--%>
</div>

</body>
</html>
