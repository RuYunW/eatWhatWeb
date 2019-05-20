<%--
  Created by IntelliJ IDEA.
  User: Ash
  Date: 2019/5/20
  Time: 23:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
    <title>JSP Page</title>
</head>
<body>
用户名:<input type="text" name="username" id="username" /><span id="msg"></span>
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
                            msg.innerHTML="<font color='red'>用户名已存在</font>"
                        }else{
                            msg.innerHTML="可以使用"
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
