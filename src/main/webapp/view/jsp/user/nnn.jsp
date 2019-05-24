<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/4/16
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Title</title>
    <style type="text/css">
        *{
            padding: 0px;
            margin: 0px;
        }
    </style>
</head>
<body>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <style type="text/css">
        *{
            padding: 0px;
            margin: 0px;
        }
        .footer{
            height: 150px;
            width: 1366px;
            background: black;
            margin: 0 auto;
        }
        a{
            color: whitesmoke;
            text-decoration: white;
        }
        td{
            text-align: right;
            color: black;
            font-weight: bolder;
        }
        td{
            text-align: center;
        }
        .imag:hover{
            cursor: alias;
        }
    </style>
</head>
<body onload="x()" style="width: 100%;height: 600px;background: black">
<div style="width: 100%;height: 30px;background: black">
    <table align="center" width="800" style="position: relative;top: 5px;left: 280px">
        <tr>
            <td><a href="/view/jsp/web.jsp">网&nbsp;站&nbsp;首&nbsp;页</a></td>
            <td><a href="/view/jsp/user/introduce.html">酒&nbsp;店&nbsp;介&nbsp;绍</a></td>
            <td><a href="/view/jsp/user/SS.jsp">客&nbsp;房&nbsp;设&nbsp;施</a></td>
            <td><a href="/view/jsp/user/service.jsp">服&nbsp;务&nbsp;项&nbsp;目</a></td>
            <td><a href="/a/myorder">预&nbsp;定&nbsp;列&nbsp;表</a></td>
            <td><a href="/a/order">我&nbsp;要&nbsp;预&nbsp;定</a></td>
        </tr>
    </table>
</div>
<c:forEach items="${news}" var="newss">
    <div class="img" style="display: block">
        <a  href="/a/showNews?id=${newss.id}">
            <img src="${pageContext.request.contextPath}/resource/css/${newss.file}" style="width: 100%;height: 585px">
        </a>
    </div>
</c:forEach>
<div class="imag" style="position: absolute;top: 585px;left: 1100px;background:ghostwhite;opacity:0.5;text-align:center;width: 20px;height: 20px">1</div>
<div class="imag" style="position: absolute;top: 585px;left: 1130px;background:ghostwhite;opacity:0.5;text-align:center;width: 20px;height: 20px">2</div>
<div class="imag" style="position: absolute;top: 585px;left: 1160px;background:ghostwhite;opacity:0.5;text-align:center;width: 20px;height: 20px">3</div>
<div class="imag" style="position: absolute;top: 585px;left:1190px;background:ghostwhite;opacity:0.5;text-align:center;width: 20px;height: 20px">4</div>
<div class="imag" style="position: absolute;top: 585px;left: 1220px;background:ghostwhite;opacity:0.5;text-align:center;width: 20px;height: 20px">5</div>
<div class="imag" style="position: absolute;top: 585px;left: 1250px;background:ghostwhite;opacity:0.5;text-align:center;width: 20px;height: 20px">6</div>
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
