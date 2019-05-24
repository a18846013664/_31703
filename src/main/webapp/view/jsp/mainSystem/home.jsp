<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/4/19
  Time: 8:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
            height: 50px;
            font-weight: bolder;
        }
        td{
            text-align: center;
        }
        tr{
            border-radius: 50px;
        }
        .as{
            width:1366px;
            height: 500px;
            background-image: url(../../../uploaddir/bg0.jpg);
        }
    </style>
</head>
<body onload="xxx()">
<div style="width: 100%;height: 45px;background: #176fc6">
    <form action="/b/ssss" method="post" style="position: absolute;top: 5px;left: 450px">
        <input id="user" onclick="x()" type="submit"  style="background: white;color: black;border-radius:15px;font-size: 20px;position: absolute;top: 2px;left: -55px;" value="查询">
        <input  type="text" name="username" value="" style="width: 450px;height: 30px;border-radius:15px ">
    </form>
    <a href="/view/jsp/mainSystem/manage.jsp" style="position: absolute;top: 15px;left: 1200px">返回主页</a>
</div>
<div class="as" style="overflow-x: hidden;overflow-y: scroll;opacity: 0.9;height: 500px;width: 1350px" >
    <div id="a1">
        <table width="1335px">
            <tbody>
            <tr>
                <td style="color: white" ><div style="text-align: center">用户</div></td>
                <td style="color: white"><div style="text-align: center">联系</div></td>
                <td style="color: white"><div style="text-align: center">card</div></td>
                <td style="color: white"><div style="text-align: center">房间</div></td>
                <td style="color: white"><div style="text-align: center">时间</div></td>
                <td style="color: white"><div style="text-align: center">操作</div></td>
            </tr>
            </tbody>
            <c:forEach var="his" items="${historylist}" >
                <tr>
                    <td style="background: #d2e6eb;font-weight: bolder;opacity: 0.8;border: 25px"><div style="text-align: center">${his.username}</div></td>
                    <td style="background: #e2e2e2;font-weight: bolder;opacity: 0.8;border: 25px"><div style="text-align: center">${his.phone}</div></td>
                    <td style="background: #e2e2e2;font-weight: bolder;opacity: 0.8;border: 25px"><div style="text-align: center">${his.card}</div></td>
                    <td style="background: #e2e2e2;font-weight: bolder;opacity: 0.8;border: 25px"><div style="text-align: center">${his.rnumber}</div></td>
                    <td style="background: #e2e2e2;font-weight: bolder;opacity: 0.8;border: 25px"><div style="text-align: center">${his.date}</div></td>
                    <td style="background: #e2e2e2;font-weight: bolder;opacity: 0.8;border: 25px"><div style="text-align: center"><a style="color: black" href="/b/showHistory?id=${his.id}&rnumber=${his.rnumber}">查看</a></div></td>
                </tr>
            </c:forEach>
        </table>
    </div>
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