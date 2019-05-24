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
            background: rgb(16, 27, 128);
        }
        a{
            color: rgb(61, 14, 14);
            text-decoration: rgb(228, 146, 146);
            background:url(../../../uploaddir/picture1.jpg) no-repeat left top;

        }
        td{
            text-align: right;
            color: rgb(8, 4, 4);
            font-weight: bolder;
            background-image:url(../../../uploaddir/picture1.jpg);
        }
        td{
            text-align: center;
            height: 50px;
        }
    </style>
</head>
<body>
<div style="width: 1366px;height: 30px;background: rgb(16, 27, 128)">
    <img src="../../../uploaddir/picture40.jpg" width="60px" height="30px" style="position: absolute;left: 1270px;opacity: 0.8">
    <a href="/view/jsp/mainSystem/manage.jsp" style="position: absolute;top: 5px;left: 1200px;color: rgb(226, 10, 10);">返回主页</a>
</div>
<div style="width: 1366px;height: 500px;background: #73b4f1">

    <div style="width: 1366px;height: 200px">

        <img src="${pageContext.request.contextPath}/uploaddir/${Rmanage.rfiles}" width="961px" height="200px">
        <img src="${pageContext.request.contextPath}/resource/image/${Umanage.file}" width="400px" height="200px">
    </div>
    <div style="width: 1366px;height: 10px;background: #83c8f7" >
    </div>
    <table  width="1366px" border="1"
            height="42"高度
            cellspacing="4"
            cellpadding="3"
    >
        <tr>
            <td colspan="2" style="background: rgb(96, 222, 244)" >房间信息</td>
            <td colspan="2" style="background: rgb(96, 222, 244)" >用户信息</td>
        </tr>
        <tr>
            <td>房间号码</td>
            <td>${Rmanage.rnumber}</td>
            <td>用户姓名</td>
            <td>${Umanage.username}</td>
        </tr>
        <tr>
            <td>房间类型</td>
            <td>${Rmanage.rvarious}</td>
            <td>用户性别</td>
            <td>${Umanage.sex}</td>
        </tr>
        <tr>
            <td>房间价格</td>
            <td>${Rmanage.rprice}</td>
            <td>联系方式</td>
            <td>${Umanage.phone}</td>
        </tr>
        <tr>
            <td>房间描述</td>
            <td>${Rmanage.rintro}</td>
            <td>card</td>
            <td>${Umanage.card}</td>
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
</body>
</html>