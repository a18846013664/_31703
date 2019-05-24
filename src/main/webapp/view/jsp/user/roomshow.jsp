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
        .LCY{
            width:800px;
            height:240px;
            background: url("../../../uploaddir/image110.jpg");
            background-repeat:no-repeat;
            background-size:100% 100%;
        }
        .LCY1{
            height: 720px;
            width: 566px;
            top: 30px;
            left: 800px;
            background: url("../../../uploaddir/image200.jpg");
            background-repeat:no-repeat;
            background-size:100% 100%;
            position: fixed;

        }
        .LCY2{
            width:800px;
            height: 420px;
            background: url("../../../uploaddir/image101.jpg");
            background-repeat:no-repeat;
            background-size:100% 100%;
        }
        table {
            width: 100%;
            font-size: .938em;
            border-collapse: collapse;
        }
    </style>
</head>
<body onload="f1()">
<div style="width: 1366px;height: 30px;background: #0f4a83;position: fixed">
    <a href="/view/jsp/user/userShow.jsp" style="position: absolute;top: 5px;left: 1200px;color: white">返回首页</a>
</div>
<div>
    <div class="LCY">
        <div style="display: block">
            <c:forEach items="${OneRoomSrc}" var="s">
                <img style="margin: 0 0;display: block" src="${pageContext.request.contextPath}/uploaddir/${s}" width="800px" height="240px"/>
            </c:forEach>
        </div>
    </div></div>
<div style="width: 566px;height: 720px;position: fixed;top: 30px;left: 800px">
    <form action="/a/yesOrder" method="post">
        <input type="hidden" name="id" value="${oneRoom.id}">
        <input type="hidden" name="userid" value="${jsp.id}">
        <input  type="hidden" name="rnumber" value="${oneRoom.rnumber}">
        <input type="hidden" id="fg" value="${oneRoom.rnow}">
        <div class="LCY1">
            <input onclick="f()"  id="submit" style="position: absolute;top: 450px;left: 180px;width: 200px;height: 40px;background: lightsteelblue" type="submit" value="预定">
            <div style="position: fixed">
                <table style="width:564px; border:1px;position: absolute;top: 150px" >
                    <tr>
                        <td style="text-align: center;height: 40px">房间号码</td>
                        <td style="text-align: center;height: 40px">${oneRoom.rnumber}</td>
                    </tr>
                    <tr>
                        <td style="text-align: center;height: 40px">房间类型</td>
                        <td style="text-align: center;height: 40px">${oneRoom.rvarious}</td>
                    </tr>
                    <tr>
                        <td style="text-align: center;height: 40px">房间描述</td>
                        <td style="text-align: center;height: 40px">${oneRoom.rintro}</td>
                    </tr>
                    <tr>
                        <td style="text-align: center;height: 40px">房间价格</td>
                        <td style="text-align: center;height: 40px">${oneRoom.rprice}</td>
                    </tr>
                    <tr>
                        <td style="text-align: center;height: 40px">房间状态</td>
                        <td style="text-align: center;height: 40px">
                            <c:if test="${oneRoom.rnow==0}">
                                <div>无人</div>
                            </c:if>
                            <c:if test="${oneRoom.rnow!=0}">
                                <div>有人</div>
                            </c:if>
                        </td>
                    </tr>
                    <tr>
                        <td  style="text-align: center;height: 40px">
                            离店时间
                        </td>
                        <td style="text-align: center;height: 40px">
                            <input style="height: 20px" id="outdays" type="text" name="outday" value="1" readonly="readonly">
                            <button type="button" onclick="f2()">+1</button>
                            <button type="button" onclick="f3()">-&nbsp;1</button>
                        </td>
                    </tr>
                </table>
            </div></div>
    </form>
</div></div>
<div style="width: 800px;height: 30px;background: #0f4a83"></div>
<div class = "LCY2">
    <div style="width: 800px;height: 420px;position: fixed">
        <img style="position: absolute;top: 300px;left: 0px;">
    </div></div></body>
<script src="http://libs.baidu.com/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript">
    function f(){
        alert("模拟预定成功");
    }
    function f1() {
        if(document.getElementById("fg").value!=0){
            var a = document.getElementById("submit");
            a.disabled = true;
        }
    }
    function f2() {
        var text = document.getElementById('outdays').value;
        if(parseInt(text) > 30){
            alert("超出预定时间");
            document.getElementById('outdays').value = 0;
        }

        var c = parseInt(document.getElementById('outdays').value) + 1;
        document.getElementById('outdays').value = c;
    }
    function f3() {
        var text = document.getElementById('outdays').value;
        var c = parseInt(document.getElementById('outdays').value) - 1;
        document.getElementById('outdays').value = c;
        if(parseInt( document.getElementById('outdays').value) < 1){
            alert("预定时间不符");
            document.getElementById('outdays').value = 1;
        }
    }

</script>
</body>
</html>
