<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/4/6
  Time: 16:10
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
        a{
            color: whitesmoke;
            text-decoration: white;
        }
        .footer{
            height: 150px;
            width: 1366px;
            background: rgb(42, 150, 223);
            margin: 0 auto;
        }
    </style>
</head>
<body>
<div style="width: 1366px;height: 30px;background: rgb(42, 150, 223)">
    <img src="../../../uploaddir/picture40.jpg" width="60px" height="30px" style="position: absolute;left: 1270px;opacity: 0.8">
    <a href="/view/jsp/mainSystem/manage.jsp" style="position: absolute;top: 5px;left: 1200px;color: rgb(226, 10, 10);">返回主页</a>
</div>
<div style="width: 1366px;height: 180px;background:#282828">
    <img src="../../../uploaddir/picture10.jpg" width="1366px" height="500px" style="position: absolute;opacity: 0.8">
    <img src="${pageContext.request.contextPath}/resource/image/${talker.file}" width="100px" height="100px" style="border-radius: 50px;position: absolute;top:70px;left: 20px"/>
    <div style="position: absolute;top: 100px;left: 200px;color: white;font-weight: bolder">${talker.text}</div>
    <div style="position: absolute;top: 150px;left: 1200px;color: saddlebrown">${talker.data}</div>
</div>
<div style="width: 1366px;height: 10px;background:rgb(0, 11, 17)"></div>
<div  style="width: 1366px;height: 300px;background:#ffffff">
    <font color="black">回复：</font>
    <form action="/b/text" method="post">
        <input type="hidden" name="id" value="${talker.id}">
        <textarea name="text" style="width: 1200px;height: 150px;position: absolute;left: 50px; background: rgb(160, 209, 255)"></textarea>
        <input style="position:absolute;left: 1280px;top: 370px;width: 60px;background: rgb(25, 122, 212)"  type="submit" value="回复">
    </form>
</div>
</body>
<div class="footer">
    <a href="#" style="float: left;margin: 30px 0px 0px 30px;color: white">友情链接：棚户区改造&nbsp;黑龙江宣传片拍摄&nbsp;桥梁设计</a>
    <div style="color: white">
        <font style="font-size:13px;float: left;margin: 100px 0px 0px 150px;">Copyright@淘乐乐购物车平台CNZZTD</font>
        <font style="font-size: 13px;float: left;margin: 120px 0px 0px -220px">客服电话：18846013664&nbsp;&nbsp;&nbsp;&nbsp;版权所有</font>
    </div>
</div>
</html>