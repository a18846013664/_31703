<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/3/18
  Time: 8:54
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
            padding: 0;
            margin: 0;
        }
        .ad{
            position: absolute;
            top: 5px;
            left: 1200px;
            color: white;
        }
        .body{
            height: 220px;
            width: 1366px;
            margin: 0 auto;
            background: url("../../../uploaddir/31702.jpeg");
            background-repeat:no-repeat;
            background-size:100% 100%;
        }
        body {font-family: "Lato", sans-serif;}

        .tablink {
            background-color: #555;
            color: white;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            font-size: 17px;
            width: 25%;
        }

        .tablink:hover {
            background-color: #777;
        }

        /* Style the tab content */
        .tabcontent {
            color: white;
            display: none;
            padding: 50px;
            text-align: center;
        }

        #London {background-color:red;}
        #Paris {background-color:green;}
        #Tokyo {background-color:blue;}
        #Oslo {background-color:orange;}
    </style>
</head>
<body>
<div style="height: 30px;width: 1366px;background: black">
    <a class="ad">返回首页</a>
</div>
<div class="body"></div>
<div style="height: 10px;width: 1366px;background: black"></div>
<div style="width: 1366px;height: 320px;background: #3a3a3a">
    <div id="London" class="tabcontent">
        <h3>Paris</h3>
        <p>Paris is the capital of France.</p>
        <img src="../../../uploaddir/31703.jpg" width="100%" height="300px" style="margin: 0px auto">
    </div>

    <div id="Paris" class="tabcontent">
        <h3>Paris</h3>
        <p>Paris is the capital of France.</p>
        <img src="../../../uploaddir/31701.jpg" width="100%" height="300px" style="margin: 0px auto">
    </div>

    <div id="Tokyo" class="tabcontent">
        <h3>Paris</h3>
        <p>Paris is the capital of France.</p>
        <img src="../../../uploaddir/31705.jpg" width="100%" height="300px" style="margin: 0px auto">
    </div>

    <div id="Oslo" class="tabcontent">
        <h3>Paris</h3>
        <p>Paris is the capital of France.</p>
        <img src="../../../uploaddir/31704.jpg" width="100%" height="300px" style="margin: 0px auto">
    </div>

    <button class="tablink" onclick="openCity('London', this, 'red')" id="defaultOpen">London</button>
    <button class="tablink" onclick="openCity('Paris', this, 'green')">Paris</button>
    <button class="tablink" onclick="openCity('Tokyo', this, 'blue')">Tokyo</button>
    <button class="tablink" onclick="openCity('Oslo', this, 'orange')">Oslo</button>
</div>
<script type="text/javascript">
    function openCity(cityName,elmnt,color) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].style.backgroundColor = "";
        }
        document.getElementById(cityName).style.display = "block";
        elmnt.style.backgroundColor = color;

    }
    // 触发 id="defaultOpen" click 事件
    document.getElementById("defaultOpen").click();
</script>
</body>
</html>
