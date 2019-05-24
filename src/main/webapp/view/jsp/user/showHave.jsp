<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/3/10
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        td{
            font-weight: bolder;
            color: #0f4a83;
        }

        a:hover{
            cursor: pointer;
        }
        .frh{
            height: 720px;
            width: 566px;
            top: 30px;
            left: 800px;
            background: url("../../../uploaddir/image200.jpg");
            background-repeat:no-repeat;
            background-size:100% 100%;
            position: fixed;

        }
        table {
            width: 100%;
            font-size: .938em;
            border-collapse: collapse;
        }
    </style>
</head>
<body>
<div style="width: 1366px;height: 30px;background:#0f4a83;position: fixed">
    <a href="/view/jsp/user/userShow.jsp" style="position: absolute;top: 5px;left: 1200px;color: white">返回首页</a>
</div>
<div class = "LCY">
    <div style="display: block">
        <c:forEach items="${OneRoomSrc}" var="s">
            <img style="margin: 0 0;display: block" src="${pageContext.request.contextPath}/uploaddir/${s}" width="800px" height="240px"/>
        </c:forEach>
    </div>
</div>
<div class="frh">
    <div style="position: fixed">
        <table style="width:564px; border:1px;position: absolute;top: 150px" >
            <tr>
                <td style="text-align: center;height: 40px">房间号码</td>
                <td style="text-align: center;height: 40px">${roominas.rnumber}</td>
            </tr>
            <tr>
                <td  style="text-align: center;height: 40px">离店时间</td>
                <td style="text-align: center;height: 40px">${roominas.outdate}</td>
            </tr>
        </table>

    </div>
</div>
<div style="width: 1366px;height: 30px;background:#0f4a83"></div>
<div class = "LCY1">
    <div style="width: 800px;height: 420px;position: fixed">
        <img style="position: absolute;top: 300px;left: 0px;"></img>
    </div></div>
<script src="http://libs.baidu.com/jquery/1.7.2/jquery.min.js"></script>
</body>
</html>
