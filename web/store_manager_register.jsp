<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 2019/5/15
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8");%>
<meta charset="UTF-8">
<html>
<head>
    <title>店铺管理员注册</title>
    <style>
        @import url(css/store_manager_register.css);
    </style>

</head>
<body style="background:url(imgs/BG2018.jpg) no-repeat;background-size:100%;background-position-y: 90%;" >
<br>
<%
    if(session.getAttribute("registerResult")==null){

    }
    else {%>
<%--       out.println(session.getAttribute("registerResult"));&ndash;%&gt;--%>
        <script type="text/javascript">
        alert("<%=session.getAttribute("registerResult")%>");
</script>
  <%  }
%>
<br>
<br>
<hr>
<center>
<div style="background-color: rgba(255,255,255,0.6);width: 50%;text-align: center;margin: 2%;padding: 2%;">
<div style="margin: 2%;padding-left: 25%;text-align: left">

<form action="Register" method="post">
    <table>

        <tr><td>用户名：</td><td><input class="input_search" type="text" placeholder="用户名" name="manager_username" id="username" /><span id="msg"></span></td></tr>

				<%--<span style="font-family:等线;font-size: larger;color: gray">密码</span>--%>
        <tr><td>密码：</td><td><input class="input_search" type="password" placeholder="长度不小于6位" name="manager_password" /></td></tr>

        <tr><td>确认密码：</td><td><input class="input_search" placeholder="请再次输入密码" type="password" name="proof_manager_password"></td></tr>

        <tr><td>验证邮箱：</td><td><input class="input_search" placeholder="请输入邮箱" type="text" name="manager_email"></td></tr>

    </table>
    <input class="login" type="submit" value="提交">
    <div>
</form>

</center>
</div>
</div>


</body>
<script>
    window.onload=function(){
        //1.获取要判断的文本框
        var nameElenment  = document.getElementById("username");
        //2.绑定失去焦点事件
        nameElenment.onblur=function(){
            var username = this.value;//3.获取用户输入的值
            var xhr =new XMLHttpRequest();//4.获取XMLHttprequset
            xhr.onreadystatechange=function(){//5.编写回调函数
                //判断是否一切正常
                if(xhr.readyState==4){
                    if(xhr.status==200){
                        var msg = document.getElementById("msg");
                        if(xhr.responseText=="true"){//说明该用户名，已经存在
                            msg.innerHTML="<font color='red'>&nbsp&nbsp用户名已存在</font>"
                        }else{
                            msg.innerHTML="<font color='green'>&nbsp&nbsp可以使用</font>"
                        }
                    }
                }
            }
            //6.建立于服务器的链接
            xhr.open("GET","${pageContext.request.contextPath}/Check_username?username="+username);
            //7.发送请求
            xhr.send();
        }

    }

</script>
</html>
