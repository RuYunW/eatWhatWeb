<%@ page import="com.wry.jdbc.dao.FoodRandomDao" %>
<%@ page import="com.wry.jdbc.domain.Food" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Ash
  Date: 2019/5/19
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8");%>
<meta charset="UTF-8">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>数据查看</title>
    <base href="<%=basePath%>">

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <style type="text/css">
        @import "./css/manager.css";
    </style>
</head>

<body style="background:url(./imgs/BG2018.jpg) no-repeat;background-size:100%;background-attachment:fixed;background-position-y: 90%; ">

<br>
<%--<div class="manager_title">店铺<%=session.getAttribute("storeID")%>管理界面</div>--%>
<%@include file="store_name.jsp"%>
<a href="index.jsp" class="manager" style="text-align: center;float: right">返回首页</a>

<br>
<hr>
<br>
<div >
    <%--左边switch--%>
    <div class="tag_switch">

        <a class="manager" href="store_manager_page/store_manager_page.jsp"><div class="tag_manager">管理主界面</div></a>
        <a class="manager" href="store_manager_page/store_manager_foodlist.jsp"><div class="tag_manager">菜品管理</div></a>
        <a class="manager" href="store_manager_page/store_manager_news.jsp"><div class="tag_manager">推送管理</div></a>
        <a class="manager" href="store_manager_page/store_manager_data.jsp"><div class="tag_manager_selected">数据查看</div></a>
        <a class="manager" href="store_manager_page/store_manager_info.jsp"><div class="tag_manager">店铺信息</div></a>

    </div>

    <%--中间主界面--%>
    <div class="main">
        <div style="font-family: '等线 Light';font-size: larger;margin: 5%;">
        <table style="text-align: center">
            <tr>
                <th>菜品名</th>
                <th>星标数量</th>
            </tr>
            <%
                FoodRandomDao foodRandomDao = new FoodRandomDao();
                ArrayList<Food> list = foodRandomDao.findStoreFood((String)(session.getAttribute("storeID")));
                for(int i=0;i<list.size();i++){
//                out.println(list.get(i).getFoodname()+"   "+list.get(i).getFoodloc()+"   "+list.get(i).getFoodprice()+"<br>");
                    out.print("<tr>"
//                        +"<td>"+list.get(i).getId()+"</td>"
                            +"<td>"+list.get(i).getFoodname()+"</td>"
                            +"<td>"+list.get(i).getStarnum()+"</td>"
                            +"</tr>");
                }
            %>
        </table></div>

    </div>
</div>

</body>
</html>
