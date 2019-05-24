<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/3/11
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style type="text/css">
        *{
            padding: 0px;
            margin: 0px;
        }
        .footer{
            height: 150px;
            width: 1366px;
            background: #0f4a83;
            margin: 0 auto;
        }
        a{
            color: white;
            text-decoration: white;
        }
        td{
            height: 46px;
            text-align: right;
            color: whitesmoke;
            font-weight: bolder;
            background: rgba(255,171,100,0.32)
        }
        td{
            text-align: center;
        }
        .ddd{
            background: url("../../../uploaddir/image200.jpg");
            background-repeat:no-repeat;
            background-size:100% 100%;
        }
    </style>
</head>
<body onload="x()">
<div style="width: 1366px;height: 30px;background: #0f4a83">
    <a href="/view/jsp/mainSystem/manage.jsp" style="position: absolute;top: 5px;left: 1200px">返回主页</a>
    <a id="hida" href="/b/reset?id=${userManage.id}&rnumber=${roomManage.id}" style="position: absolute;top: 5px;left: 1100px">退订</a>
</div>
<div style="width: 1366px;height: 500px;">
    <div style="width: 1366px;height: 200px">
        <input id="hidd" type="hidden" value="${userManage.file}">
        <img src="${pageContext.request.contextPath}/uploaddir/${roomManage.rfiles}" width="1100px" height="200px">
        <img id="hid" src="${pageContext.request.contextPath}/resource/image/${userManage.file}" width="246px" height="200px">
        <img id="hide" style="display: none;position: absolute;top:30px;left: 1101px " src="../../../uploaddir/31703.jpg" width="246px" height="200px">
    </div>
    <div style="width: 1366px;height: 10px;background: #0f4a83" ></div>
    <table width="1366px" class="ddd">
        <tr>
            <td colspan="2" style="background: rgba(255,171,100,0.32)">房间信息</td>
            <td colspan="2" style="background: rgba(255,171,100,0.32)">用户信息</td>
        </tr>
        <tr>
            <td>房间号码</td>
            <td>${roomManage.rnumber}</td>
            <td>用户姓名</td>
            <td>${userManage.username}</td>
        </tr>
        <tr>
            <td>房间类型</td>
            <td>${roomManage.rvarious}</td>
            <td>用户性别</td>
            <td>${userManage.sex}</td>
        </tr>
        <tr>
            <td>房间价格</td>
            <td>${roomManage.rprice}</td>
            <td>联系方式</td>
            <td>${userManage.phone}</td>
        </tr>
        <tr>
            <td>房间描述</td>
            <td>${roomManage.rintro}</td>
            <td>card</td>
            <td>${userManage.card}</td>
        </tr>
        <tr>
            <td colspan="2">入住时间</td>
            <td colspan="2">${roominManage.date}</td>
        </tr>
    </table>

</div>
<div class="footer">
    <a href="#" style="float: left;margin: 30px 0px 0px 30px;color: white">友情链接：棚户区改造&nbsp;黑龙江宣传片拍摄&nbsp;桥梁设计</a>
    <div style="color: white">
        <font style="font-size:13px;float: left;margin: 100px 0px 0px 150px;">Copyright@淘乐乐购物车平台CNZZTD</font>
        <font style="font-size: 13px;float: left;margin: 120px 0px 0px -220px">客服电话：18846013664&nbsp;&nbsp;&nbsp;&nbsp;版权所有</font>
    </div>
</div>
<script type="text/javascript">
    var hid = document.getElementById('hid');
    var hide = document.getElementById('hide');
    var hidd = document.getElementById('hidd');
    var hida = document.getElementById('hida');
    function x() {
        if (hidd.value==""){
            hide.style.display="block";
            hid.style.display="none";
            hida.style.display="none"
        }
    }
</script>
</body>
</html>