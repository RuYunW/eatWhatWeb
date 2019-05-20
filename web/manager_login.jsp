<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();

    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

<%--    实现判断管理员类型跳转--%>
    <title>管理员登录页面</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <style type="text/css">
        <!--
        /*这里是通过@import引用CSS的样式内容*/
        @import url(css/manager_login.css);
        @import url(css/index.css);
        -->
        a.registerLink:link{color:black;}
        a.registerLink{color:black;}
        a.registerLink:hover{color:royalblue;}
        a.registerLink:active{color:royalblue;}
        a.registerLink{
            text-decoration: none;
            font-family: "等线 Light";
            font-size: 20px;
            line-height: 200%;
        }
    </style>

<%--    简单的结果输出--%>
    <%
    String failState = (String) session.getAttribute("state");
    if (failState == null) {
    } else {
    %>
    <script type="text/javascript">
        alert("<%=session.getAttribute("state")%>");
    </script>
    <%
        }
        session.setAttribute("state", null);
    %>
</head>

<body style="background:url(imgs/BG2018.jpg) no-repeat;background-size:100%;background-attachment:fixed;background-position-y: 90%;">

	<br><br>
	<a href=" index.jsp" style="float: right">返回首页</a>
<br>
<hr>
<form action="doLogin" method="post">

    <br>
    <br>
    <div align="center">
        <%--<span style="font-family:等线;font-size: larger;color: gray">账号</span>--%>
        <input class="input_search" type="text" placeholder="账号" name="username"/>
        <br>
        <%--<span style="font-family:等线;font-size: larger;color: gray">密码</span>--%>
        <input class="input_search" type="password" placeholder="密码" name="password"/>
        <br>
        <input class="login" type="submit" value="登录">
            <div style="height: auto;width: 120px;border-width: 1px;border-style: solid;background-color: rgba(255,255,255,0.5);border-color: white">
            <a href="store_manager_register.jsp" class="registerLink">注册
            </a>
            </div>
        <br>
    </div>
</form>

</body>
</html>