<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/3/18
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style type="text/css">
        *{padding: 0px;margin: 0px}
        .body{
            height: 220px;
            width: 100%;
            margin: 0 auto;
            background: url("../../../uploaddir/31702.jpeg");
            background-repeat:no-repeat;
            background-size:100% 100%;
        }
        a{
            text-decoration: white;
            color: black;
        }
        .imag:hover{
            cursor: alias;
        }
        td {
            text-align: center;
            height: 20px;
            font-weight: bolder;
        }
        .io:hover{
            background: lightgrey;
        }
    </style>
</head>
<body onload="x()">
<div style="width: 100%;height: 30px;background: white">
    <table align="center" width="800" style="position: relative;top: 5px;left: 280px">
        <tr>
            <td class="io"><a href="/view/jsp/web.jsp">网&nbsp;站&nbsp;首&nbsp;页</a></td>
            <td class="io"><a href="/view/jsp/user/introduce.html">酒&nbsp;店&nbsp;介&nbsp;绍</a></td>
            <td class="io"><a href="/view/jsp/user/SS.jsp">客&nbsp;房&nbsp;设&nbsp;施</a></td>
            <td class="io"><a href="/view/jsp/user/service.jsp">服&nbsp;务&nbsp;项&nbsp;目</a></td>
            <td class="io"><a href="/a/myorder">预&nbsp;定&nbsp;列&nbsp;表</a></td>
            <td class="io"><a href="/a/order">我&nbsp;要&nbsp;预&nbsp;定</a></td>
            <td class="io"><a href="/view/jsp/web.jsp">返&nbsp;回&nbsp;上&nbsp;页</a></td>
        </tr>
    </table>
</div>
<c:forEach items="${news}" var="newss">
    <div class="img" style="display: none">
        <a  href="/a/showNews?id=${newss.id}">
            <img src="${pageContext.request.contextPath}/resource/css/${newss.file}" style="width: 100%;height: 200px">
        </a>
    </div>
</c:forEach>
<div class="imag" style="position: absolute;top: 200px;left: 1100px;background:ghostwhite;opacity:0.5;text-align:center;width: 20px;height: 20px">1</div>
<div class="imag" style="position: absolute;top: 200px;left: 1130px;background:ghostwhite;opacity:0.5;text-align:center;width: 20px;height: 20px">2</div>
<div class="imag" style="position: absolute;top: 200px;left: 1160px;background:ghostwhite;opacity:0.5;text-align:center;width: 20px;height: 20px">3</div>
<div class="imag" style="position: absolute;top: 200px;left:1190px;background:ghostwhite;opacity:0.5;text-align:center;width: 20px;height: 20px">4</div>
<div class="imag" style="position: absolute;top: 200px;left: 1220px;background:ghostwhite;opacity:0.5;text-align:center;width: 20px;height: 20px">5</div>
<div class="imag" style="position: absolute;top: 200px;left: 1250px;background:ghostwhite;opacity:0.5;text-align:center;width: 20px;height: 20px">6</div>
<div style="background:url(../../../uploaddir/301.jpg);width: 1366px;height: 600px;overflow-x: hidden;overflow-y: scroll;">
    <table width="1350px">
        <tbody>
        <tr>
            <td style="font-weight: bolder;color: white;height: 60px;border-radius: 15px"><div style="text-align: center">用户</div></td>
            <td style="font-weight: bolder;color: white;height: 60px;border-radius: 15px"><div style="text-align: center">性别</div></td>
            <td style="font-weight: bolder;color: white;height: 60px;border-radius: 15px"><div style="text-align: center">联系</div></td>
            <td style="font-weight: bolder;color: white;height: 60px;border-radius: 15px"><div style="text-align: center">card</div></td>
            <td style="font-weight: bolder;color: white;height: 60px;border-radius: 15px"><div style="text-align: center">房间</div></td>
            <td style="font-weight: bolder;color: white;height: 60px;border-radius: 15px"><div style="text-align: center">操作</div></td>
        </tr>
        </tbody>
        <c:forEach var="roomins" items="${myOrder}" >
            <tr>
                <input type="hidden" id="hid" value="${roomins.username}">
                <td style="background: #e2e2e2;font-weight: bolder;opacity: 0.5;color: #7a7a7a;height: 60px;border-radius: 15px"><div style="text-align: center">${roomins.username}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder;opacity: 0.5;color: #7a7a7a;height: 60px;border-radius: 15px"><div style="text-align: center">${roomins.sex}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder;opacity: 0.5;color: #7a7a7a;height: 60px;border-radius: 15px"><div style="text-align: center">${roomins.phone}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder;opacity: 0.5;color: #7a7a7a;height: 60px;border-radius: 15px"><div style="text-align: center">${roomins.card}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder;opacity: 0.5;color: #7a7a7a;height: 60px;border-radius: 15px"><div style="text-align: center">${roomins.rnumber}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder;opacity: 0.5;color: #7a7a7a;height: 60px;border-radius: 15px"><div style="text-align: center"><a href="/a/showPage?id=${roomins.id}&rnumber=${roomins.rnumber}">查看</a></div></td>
            </tr>
        </c:forEach>
    </table>
</div>
<script type="text/javascript">
    function x() {
        for (var i = 0 ; i < img.length ; i++){
            if (i == 0){img[0].style.display="block";}
            else {img[i].style.display="none"}
        }
    }
    var img = document.getElementsByClassName('img');
    var imag = document.getElementsByClassName('imag');
    var index = 0;
    var timer = null;
    for(var i = 0 ; i < img.length ; i++){
        imag[i].id = i;
        imag[i].onmouseover = function(){
            clearInterval(timer);
            changeOption(this.id);
        }

    }
    function changeOption(curIndex){
        for(var j = 0 ; j < imag.length ; j++){
            img[j].style.display = 'none';
        }
        img[curIndex].style.display='block';
    }
    if(timer){
        clearInterval(timer);
        timer = null;
    }
    timer = setInterval(autoPlay,2000);
    function autoPlay(){
        index++;
        if(index>=img.length){
            index = 0;
        }
        changeOption(index);
    }
</script>
</body>
</html>