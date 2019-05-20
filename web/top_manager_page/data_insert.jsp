<%@ page import="com.wry.jdbc.domain.User" %>
<%@ page import="com.wry.jdbc.dao.FoodRandomDao" %>
<%@ page import="com.wry.jdbc.domain.Food" %>
<%@ page import="java.lang.Float" %>
<%@ page import="com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory" %>
<%@ page import="javax.xml.bind.annotation.XmlType" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/4/25
  Time: 0:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%--<%--%>
    <%--String path = request.getContextPath();--%>
    <%--String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";--%>
<%--%>--%>
<html>
<head>
    <title>Title</title>
    <%--<base href="<%=basePath%>">--%>
</head>
<body>
<%
    String fname = request.getParameter("foodname");
    String floc = request.getParameter("foodloc");
    String dloc = request.getParameter("detailloc");
    String fprice=request.getParameter("foodprice");

    out.print(fname+" "+floc+" "+dloc+" "+fprice);

    FoodRandomDao foodRandomDao = new FoodRandomDao();
    Food food = new Food();
    food.setFoodname(fname);
    food.setFoodloc(floc);
    food.setDetailloc(dloc);
    if(fprice!=""){
        food.setFoodprice(Float.parseFloat(fprice));
    }
    else{
        food.setFoodprice(0);
    }

    boolean b = foodRandomDao.insert(food);
    if(b){
        out.print("插入成功");
        request.getRequestDispatcher("manager_food.jsp").forward(request,response);
    }


%>
hahahas
</body>
</html>
