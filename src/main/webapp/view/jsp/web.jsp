<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/4/16
  Time: 19:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>艾特国际酒店</title>
    <link rel="stylesheet" type="text/css" href="/resource/css/style0.css">
    <script src="/resource/js/jquery-3.1.1.min0.js"></script>
    <script type="text/javascript" src="/resource/js/carousel0.js"></script>
</head>

<body onload="x()">
<div class="head">
    <div class="logo">
        <a href="/view/jsp/user/introduce.html"><img src="/resource/image/logo.png"></a>
    </div>
    <div class="h-nav">
        <ul class="nav">
            <li><a href="#">网站首页</a></li>
            <li><a href="/view/jsp/user/nnn.jsp">酒店活动</a></li>
            <li><a href="/view/jsp/user/SS.jsp">客房设施</a></li>
            <li><a href="/view/jsp/user/service.jsp">服务项目</a></li>
            <li><a href="/a/myorder">预定列表</a></li>
            <li><a href="/a/order">我要预定</a></li>
        </ul>
    </div>
</div>
<div class="login">
    <div id="qa" style="display:none;position: absolute;left: 1200px;top: 15px"><a href="/view/jsp/user/main.jsp">${jsp.username}</a></div>
    <a id="qb" href="/view/jsp/load.jsp">登录</a>  <a id="qc" href="/view/jsp/register.jsp">注册</a>
</div>
<!--轮播图-->
<div class="content">
    <div class="carousel-content">
        <ul class="carousel">
            <li><img src="/resource/image/slider1.jpg"></li>
            <li><img src="/resource/image/slider2.jpg"></li>
            <li><img src="/resource/image/slider3.jpg"></li>
            <li><img src="/resource/image/slider4.jpg"></li>
            <li><img src="/resource/image/slider5.jpg"></li>
        </ul>
        <ul class="img-index"></ul>
        <div class="carousel-prev"><img src="/resource/image//left1.png"></div>
        <div class="carousel-next"><img src="/resource/image//right1.png"></div>
    </div>
</div>

<div class="middle">
    <div class="middle-1">
        <h3>环境</h3>
        <a href="#"><img src="/resource/image/pic1.jpg" /></a>
        <button class="btn"><a href="#">更多</a></button>
    </div>
    <div class="middle-1">
        <h3>设施</h3>
        <a href="#"><img src="/resource/image/pic2.jpg" /></a>
        <button class="btn"><a href="#">更多</a></button>
    </div>
    <div class="middle-1">
        <h3>人员</h3>
        <a href="#"><img src="/resource/image/pic3.jpg" /></a>
        <button class="btn"><a href="#">更多</a></button>
    </div>
    <div class="middle-1">
        <h3>服务</h3>
        <a href="#"><img src="/resource/image/pic4.jpg" /></a>
        <button class="btn"><a href="#">更多</a></button>
    </div>
</div>
<div class="footer">
    <div class="footer-1">
        <h3>友情链接</h3>
        <li><a href="#">友情链接</a></li>
        <li><a href="#">友情链接</a></li>
        <li><a href="#">友情链接</a></li>
        <li><a href="#">友情链接</a></li>
    </div>
    <div class="footer-1">
        <h3>关于我们</h3>
        <li>一家以顾客至上为宗旨的国际酒店</li>

    </div>
    <div class="footer-1">
        <h3>所在地址</h3>
        <li>黑龙江</li>
        <li>哈尔滨</li>
        <li>香坊区</li>
        <li>哈尔滨理工大学东区</li>
    </div>
    <div class="footer-1">
        <h3>联系我们</h3>
        <span><a href="#"><img src="/resource/image/qq1.1.png"></a></span>
        <span><a href="#"><img src="/resource/image/weibo1.1.png"></a></span>
        <span><a href="#"><img src="/resource/image/facebook1.1.png"></a></span>
        <span><a href="#"><img src="/resource/image/twitter1.1.png"></a></span>
    </div>
</div>
<script type="text/javascript">
    function x() {
        var qq = document.getElementById("qa").innerText;
        var qb = document.getElementById("qb");
        var qc = document.getElementById("qc");
        if (document.getElementById("qa").innerText!=""){
            document.getElementById("qa").style.display="block";
            document.getElementById("qb").style.display="none";
            document.getElementById("qc").style.display="none";
        }
    }
</script>
</body>

</html>
