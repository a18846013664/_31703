<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/4/16
  Time: 19:42
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
            text-align: right;
            color: white;
            font-weight: bolder;
        }
        td{
            text-align: center;
        }
    </style>
</head>
<body onload="x()">
<div style="width: 1366px;height: 30px;background: #0f4a83">
    <table align="center" width="800" style="position: relative;top: 5px;left: 280px">
        <tr>
            <td class="io"><a href="/view/jsp/web.jsp">网&nbsp;站&nbsp;首&nbsp;页</a></td>
            <td class="io"><a href="/view/jsp/user/introduce.html">酒&nbsp;店&nbsp;介&nbsp;绍</a></td>
            <td class="io"><a href="/view/jsp/user/SS.jsp">客&nbsp;房&nbsp;设&nbsp;施</a></td>
            <td class="io"><a href="/view/jsp/user/service.jsp">服&nbsp;务&nbsp;项&nbsp;目</a></td>
            <td class="io"><a href="/a/myorder">预&nbsp;定&nbsp;列&nbsp;表</a></td>
            <td class="io"><a href="/a/order">我&nbsp;要&nbsp;预&nbsp;定</a></td>
            <td class="io"><a href="/view/jsp/web.jsp">返&nbsp;回&nbsp;上&nbsp;页</a></td>
            <td class="io"><a href="/a/reset?id=${userManage.id}&rnumber=${roomManage.id}">退订</a></td>
        </tr>
    </table>
</div>
<div style="width: 1366px;height: 500px;background: url(../../../uploaddir/timg.jpg)">
    <div style="width: 1366px;height: 200px">
        <input id="hidd" type="hidden" value="${userManage.file}">
        <img src="${pageContext.request.contextPath}/uploaddir/${roomManage.rfiles}" width="1100px" height="200px">
        <img id="hid" src="${pageContext.request.contextPath}/resource/image/${userManage.file}" width="246px" height="200px">
        <img id="hide" style="display: none;position: absolute;top:30px;left: 1101px " src="../../../uploaddir/31703.jpg" width="246px" height="200px">
    </div>
    <div style="width: 1366px;height: 10px;background: black" ></div>
    <table width="1366px" style="">
        <tr>
            <td colspan="2" style="background: rgba(98,66,39,0.34);opacity: 0.9">房间信息</td>
            <td colspan="2" style="background: rgba(98,66,39,0.34);opacity: 0.9">用户信息</td>
        </tr>
        <tr>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">房间号码</td>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">${roomManage.rnumber}</td>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">用户姓名</td>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">${userManage.username}</td>
        </tr>
        <tr>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">房间类型</td>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">${roomManage.rvarious}</td>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">用户性别</td>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">${userManage.sex}</td>
        </tr>
        <tr>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">房间价格</td>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">${roomManage.rprice}</td>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">联系方式</td>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">${userManage.phone}</td>
        </tr>
        <tr>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">房间描述</td>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">${roomManage.rintro}</td>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">card</td>
            <td style="height: 50px;background: rgba(98,66,39,0.34)">${userManage.card}</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 50px;background: rgba(98,66,39,0.34)">入住时间</td>
            <td colspan="2" style="height: 50px;background: rgba(98,66,39,0.34)">${roominManage.date}</td>
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

