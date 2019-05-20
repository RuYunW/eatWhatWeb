<%--
  Created by IntelliJ IDEA.
  User: Ash
  Date: 2019/5/19
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>

    <base href="<%=basePath%>">
    <title>填写详细信息</title>
    <style>
        @import url(./css/verificationEmail.css);
    </style>

</head>

<body style="background:url(./imgs/BG2018.jpg) no-repeat;background-size:100%;background-position-y: 90%;">
<br><br>
<%
    if(session.getAttribute("infoResult")==null){

    }else {
        out.println(session.getAttribute("infoResult"));
    }
%>
<hr>
<div style="font-family: '等线 Light';font-size: larger;background-color: rgba(255,255,255,0.5);margin: 2%;padding: 5%;padding-left: 10%;padding-right: 10%;" >
    <center>
        <form action="InsertRegister" method="post" >
            <table>
                <tr>
                    <td>管理店铺位置：</td>
                    <td><select id="bigLoc" class="input_box" name="bigLoc">
                        <option value="01">一餐</option>
                        <option value="02">二餐</option>
                        <option value="A">A区</option>
                        <option value="SYJ">商业街</option>
                    </select></td>
                    <td><select id="smallLoc" class="input_box" name="smallLoc"></select>　</td>
<%--                    <select id="val" class="sel"></select>　--%>
<%--                    <td>--%>
<%--                        <select class="input_box" id="bigLoc" name="bigLoc" onchange="alter(this.selectedIndex)"></select>--%>
<%--                    <select class="input_box" name="smallLoc" id="smallLoc"></select>--%>

                </tr>
                <tr>
                    <td>管理店铺名称：</td>
                    <td><input type="text" class="input_box" name="store_name" placeholder="店铺名称"></td>
                </tr>
                <tr>
                    <td></td><td><input type="submit" class="submit" value="完成注册"></td>
                </tr>
            </table>
        </form>
        <script type="text/javascript">
            var select = document.getElementById("bigLoc");
            select.onchange=function(){
                var selvalue = select.value;
                var val = document.getElementById("smallLoc");
                switch(selvalue){
                    case "01" : val.innerHTML=
                        "<option value=1>一楼</option>" +
                        "<option value=2>二楼北</option>" +
                        "<option value=3>二楼南</option>"+
                        "<option value=4>三楼北</option>"+
                        "<option value=5>三楼南</option>";break;
                    case "02" : val.innerHTML=
                        "<option value=1>一楼</option>" +
                        "<option value=2>二楼</option>"+
                        "<option value=3>三楼</option>";break;
                    case "A" : val.innerHTML="<option value=1>一楼</option>";break;
                    case "SYJ" : val.innerHTML=
                        "<option value=1>银座商业街</option>" +
                        "<option value=2>数娱广场</option>"+
                        "<option value=3>蜜桃百货</option>"+
                        "<option value=4>其他</option>";break;
                    default : alert("erro");
                }
            };
        </script>
<%--        <script type="text/javascript">--%>
<%--        //定义bigLoc数组--%>
<%--        var arr_bigLoc = ["请选择食堂位置","一餐","二餐","A区","商业街"];--%>
<%--        //定义具体位置二维数组--%>
<%--        var arr_smallLoc = [--%>
<%--            ["请选择具体位置"],--%>
<%--            ["请选择具体位置","一楼","二楼北","二楼南","三楼北","三楼南"],--%>
<%--            ["请选择具体位置","一楼","二楼","三楼"],--%>
<%--            ["请选择食堂位置","一楼"],--%>
<%--            ["请选择具体位置","银座商业街","数娱广场","蜜桃百货","其他"]--%>
<%--        ];--%>
<%--        //获取对象--%>
<%--        var bigLoc = document.getElementById('bigLoc');--%>
<%--        var smallLoc = document.getElementById('smallLoc');--%>
<%--        //初始化菜单--%>
<%--        onload = function () {--%>
<%--            //指定食堂option标记的个数--%>
<%--            bigLoc.length = arr_bigLoc.length;--%>
<%--            //数组数据写入<option>标记中--%>
<%--            for(var i = 0; i < arr_bigLoc.length; i++){--%>
<%--                bigLoc.options[i].text = bigLoc.options[i].value = arr_bigLoc[i];--%>
<%--            }--%>
<%--            //设置食堂地点列表默认选项--%>
<%--            var index = 0;--%>
<%--            bigLoc.index = index;--%>
<%--            //指定具体位置option标记的个数--%>
<%--            smallLoc.length = arr_smallLoc[index].length;--%>
<%--            //数组数据写入option标记--%>
<%--            for (var j = 0; j < arr_smallLoc[index].length; j++) {--%>
<%--                smallLoc.options[j].text = smallLoc.options[j].value = arr_smallLoc[index][j];--%>
<%--            }--%>
<%--        }--%>
<%--        function alter(index) {--%>
<%--            //修改食堂列表的选择项--%>
<%--            bigLoc.index = index;--%>
<%--            //指定具体位置option标记的个数--%>
<%--            smallLoc.length = arr_smallLoc[index].length;--%>
<%--            //数组中的数据写入option标记--%>
<%--            for (var j = 0; j < arr_smallLoc[index].length; j++) {--%>
<%--                smallLoc.options[j].text = smallLoc.options[j].value = arr_smallLoc[index][j];--%>
<%--            }--%>
<%--        }--%>
<%--    </script>--%>

    </center>
</div>


</body>
</html>
