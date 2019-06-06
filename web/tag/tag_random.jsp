<%@ page import="com.wry.domain.Food" %>
<%@ page import="com.wry.dao.FoodRandomDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.wry.dao.StoreManagerDao" %>
<%@ page import="com.wry.dao.StoreDao" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/3/10
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8");%>
<meta charset="UTF-8">

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
<%--<div class="title_continer">--%>
<%--    刷新获取随机菜品--%>
<%--</div>--%>
<div class="background">
<center>
    <div class="random_font">
<%--        随机菜名--%>
        <%=list.get(rand_num).getFoodname()%>
    </div>
    <div style="font-family: '微软雅黑 Light';font-size: xx-large;width: 20%">
        <div style="float: left;width: 40%">
            <a href="javascript:location.reload();">
                <span style="color: darkgreen;font-size: 30px;background: rgba(255,255,255,0.3);margin: 5%;font-family: '等线 Light'">刷新</span>
            </a>
        </div>
        <div style="float: right;width: 40%;">
            <input type="button" value="详细信息" onClick="detail();" />
        </div>
        <%
            StoreDao storeDao = new StoreDao();

        %>
<%--        弹窗详情--%>
        <script type="text/javascript">
            function detail() {
                var temp =
                    "菜品名:"+ "<%=list.get(rand_num).getFoodname()%>"+"\n"+
                    "价格:"+"<%=list.get(rand_num).getFoodprice()%>"+"\n"+
                    "窗口名:"+"<%=storeDao.find(list.get(rand_num).getFood_store_id()).getStoreName()%>"+"\n"+
                    "地点:"+"<%=storeDao.find(list.get(rand_num).getFood_store_id()).getStoreLoc()%>"+"\n";
                alert(temp);
            }
        </script>

    </div></center>

</div>


</body>
</html>
