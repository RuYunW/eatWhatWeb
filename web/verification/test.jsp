<%--
  Created by IntelliJ IDEA.
  User: Ash
  Date: 2019/5/19
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="">
    省/市：<select id="province" onchange="alter(this.selectedIndex)"></select>
    市/区：<select id="city"></select>
</form>
<script type="text/javascript">
    //定义省/直辖市数组
    var arr_province = ["请选择省/直辖市","北京市","上海市","广东省"];
    //定义市/区二维数组
    var arr_city = [
        ["请选择市/区"],
        ["东城区","西城区","朝阳区","宣武区","昌平区","大兴区","丰台区","海淀区"],
        ['宝山区','长宁区','丰贤区', '虹口区','黄浦区','青浦区','南汇区','徐汇区','卢湾区'],
        ['广州市','惠州市','汕头市','珠海市','佛山市','中山市','东莞市']
    ];
    //获取对象
    var province = document.getElementById('province');
    var city = document.getElementById('city');
    //初始化菜单
    onload = function () {
        //指定省option标记的个数
        province.length = arr_province.length;
        //数组数据写入<option>标记中
        for(var i = 0; i < arr_province.length; i++){
            province.options[i].text = province.options[i].value = arr_province[i];
        }
        //设置省列表默认选项
        var index = 0;
        province.index = index;
        //指定城市option标记的个数
        city.length = arr_city[index].length;
        //数组数据写入option标记
        for (var j = 0; j < arr_city[index].length; j++) {
            city.options[j].text = city.options[j].value = arr_city[index][j];
        }
    }
    function alter(index) {
        //修改省列表的选择项
        province.index = index;
        //指定城市option标记的个数
        city.length = arr_city[index].length;
        //数组中的数据写入option标记
        for (var j = 0; j < arr_city[index].length; j++) {
            city.options[j].text = city.options[j].value = arr_city[index][j];
        }
    }
</script>

</body>
</html>
