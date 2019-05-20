<%@ page import="com.wry.jdbc.dao.FoodRandomDao" %>
<%@ page import="com.wry.jdbc.domain.Food" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Ash
  Date: 2019/5/19
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>菜品管理</title>
    <base href="<%=basePath%>">

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <style type="text/css">
        @import "./css/manager.css";
        @import "./css/verificationEmail.css";
    </style>

</head>

<body style="background:url(./imgs/BG2018.jpg) no-repeat;background-size:100%;background-attachment:fixed;background-position-y: 90%; ">

<br>
<%--<div class="manager_title">店铺<%=session.getAttribute("storeID")%>管理界面</div>--%>
<%@include file="store_name.jsp" %>
<a href="index.jsp" class="manager" style="text-align: center;float: right">返回首页</a>
<br>
<hr>
<br>
<div>
    <%--左边switch--%>
    <div class="tag_switch">
        <a class="manager" href="store_manager_page/store_manager_page.jsp">
            <div class="tag_manager">管理主界面</div>
        </a>
        <a class="manager" href="store_manager_page/store_manager_foodlist.jsp">
            <div class="tag_manager_selected">菜品管理</div>
        </a>
        <a class="manager" href="store_manager_page/store_manager_news.jsp">
            <div class="tag_manager">推送管理</div>
        </a>
        <a class="manager" href="store_manager_page/store_manager_data.jsp">
            <div class="tag_manager">数据查看</div>
        </a>
        <a class="manager" href="store_manager_page/store_manager_info.jsp">
            <div class="tag_manager">店铺信息</div>
        </a>
    </div>
    <%--中间主界面--%>
    <div class="main">
        <div style="font-family: '等线 Light';margin: 5%;">
            <table style="text-align: center;font-size: larger">
                <tr>
                    <th>菜品名</th>
                    <th>价格</th>
                </tr>
                <%
                    FoodRandomDao foodRandomDao = new FoodRandomDao();
                    ArrayList<Food> list = foodRandomDao.findStoreFood((String) (session.getAttribute("storeID")));
                    for (int i = 0; i < list.size(); i++) {
//                out.println(list.get(i).getFoodname()+"   "+list.get(i).getFoodloc()+"   "+list.get(i).getFoodprice()+"<br>");
                        out.print("<tr>"
//                        +"<td>"+list.get(i).getId()+"</td>"
                                + "<td>" + list.get(i).getFoodname() + "</td>"
                                + "<td>" + list.get(i).getFoodprice() + "</td>"
                                + "</tr>");
                    }
                %>
            </table>
        </div>
        <br>
        <br>
        <div style="float: left;background: rgba(255,255,255,0.3);padding: 10px;margin: 10px;">

            <form action="InsertFood" method="post">
                <div style="font-weight: bold;font-size: larger">执行插入操作，将信息填入下表</div>
                <br>
                <table>
                    <tr>
                        <th>食物名称</th>
<%--                        <th>食堂位置</th>--%>
<%--                        <th>具体位置</th>--%>
                        <th>价格</th>
                    </tr>
                    <tr>
                        <td><input type="text" name="foodname" class="input_box"></td>
<%--                        <td><input type="text" name="foodloc" class="input_box"></td>--%>
<%--                        <td><input type="text" name="detailloc" class="input_box"></td>--%>
                        <td><input type="text" name="foodprice" class="input_box"></td>
                    </tr>
                </table>

                <input style="float: right" type="submit" class="submit" value="插入">
            </form>
        </div>
    </div>


</div>
</div>

</body>
</html>
