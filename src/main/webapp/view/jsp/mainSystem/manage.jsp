<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/4/6
  Time: 16:10
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
        a{
            color: black;
            text-decoration: white;
        }
        a:hover{
            font-size: 17px;
        }
        #vaa{
            position: absolute;
            top: 5px;
            left: 230px;
            color: white;
            font-weight: bolder;
        }
        #va{
            position: absolute;
            top: 5px;
            left: 350px;
            color: white;
            font-weight: bolder;
        }
        #vb{
            position: absolute;
            top: 5px;
            left: 470px;
            color: white;
            font-weight: bolder;
        }
        #vc{
            position: absolute;
            top: 5px;
            left: 590px;
            color: white;
            font-weight: bolder;
        }
        #vd{
            position: absolute;
            top: 5px;
            left: 710px;
            color: white;
            font-weight: bolder;
        }
        #ve{
            position: absolute;
            top: 5px;
            left: 830px;
            color: white;
            font-weight: bolder;
        }
        #vf{
            position: absolute;
            top: 5px;
            left: 950px;
            color: white;
            font-weight: bolder;
        }
        #vg{
            position: absolute;
            top: 5px;
            left: 1070px;
            color: white;
            font-weight: bolder;
        }
        #vh{
            position: absolute;
            top: 5px;
            left: 1190px;
            color: white;
            font-weight: bolder;
        }
        .div{
            height: 200px;
            width: 1366px;
            margin: 0 auto;
            background: url("../../../uploaddir/picture1.jpg");
            background-repeat:no-repeat;
            background-size:100% 100%;
        }
        #result{
            position:relative;
            top: 40px;left: 200px;
            border-radius:25px;
            width: 200px;
            height:140px;
            border:2px solid #222222;
        }
        #result1{
            position:relative;
            top: -105px;left: 550px;
            border-radius:25px;
            width: 200px;
            height:140px;
            border:2px solid #222222;
        }
        #result2{
            position:relative;
            top: -250px;left: 900px;
            border-radius:25px;
            width: 200px;
            height:140px;
            border:2px solid #222222;
        }
        #results img{
            width: 1000px;
            height:200px;
        }
        #result img{
            border-radius:25px;
            width: 200px;
            height:140px;
        }
        #result1 img{
            border-radius:25px;
            width: 200px;
            height:140px;
        }
        #result2 img{
            border-radius:25px;
            width: 200px;
            height:140px;
        }
        .input{
            position: relative;
            top: -40px;
            left: 40px;
            width: 70px;

        }
        .ca{
            position: absolute;
            top: 463px;
            left: 255px;
        }
        .cb{
            position: absolute;
            top: 463px;
            left: 615px;
        }
        .cc{
            position: absolute;
            top:463px;
            left: 975px;
        }
        a{
            cursor: pointer;
        }
        td{
            height: 50px;
            background-color: blanchedalmond;
            opacity: 0.5;
        }
    </style>
</head>
<body>
<div style="width: 1366px;height: 30px;background: #0f4a83;">

    <font style="position: absolute;top: 5px;left: 10px;font-weight: bolder;color: white">管理员:${manage.username}</font>
    <a id="vaa" href="/view/jsp/mainSystem/date.jsp">房间到期</a>
    <a id="va" onclick="a()">房客管理</a>
    <a id="vb" onclick="b()">房间发布</a>
    <a id="vc" onclick="c()">房间信息</a>
    <a id="vd" onload="d()" onclick="d()">历史记录</a>
    <a id="ve" onclick="e()">消息发布</a>
    <a id="vf" onclick="f()">评论区</a>
    <a id="vg" href="/view/jsp/mainSystem/talkfilter.jsp">评论审核</a>
    <a id="vh" href="/view/jsp/mainSystem/home.jsp">历史查询</a>
</div>
<div class="div"></div>
<div style="width: 1366px;height: 10px;background: #0f4a83;"></div>
<div style="width: 1366px;height: 400px;background: url(../../../uploaddir/timg.jpg);display: block" id="av">
    <table width="1366px">
        <tbody>
        <tr>
            <td style="font-weight: bolder"><div style="text-align: center">用户</div></td>
            <td style="font-weight: bolder"><div style="text-align: center">性别</div></td>
            <td style="font-weight: bolder"><div style="text-align: center">联系</div></td>
            <td style="font-weight: bolder"><div style="text-align: center">card</div></td>
            <td style="font-weight: bolder"><div style="text-align: center">房间</div></td>
            <td style="font-weight: bolder"><div style="text-align: center">操作</div></td>
        </tr>
        </tbody>
        <c:forEach var="roomins" items="${roomin}" >
            <tr>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${roomins.username}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${roomins.sex}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${roomins.phone}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${roomins.card}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${roomins.rnumber}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center"><a href="/b/showPage?id=${roomins.id}&rnumber=${roomins.rnumber}">查看</a></div></td>
            </tr>
        </c:forEach>
    </table>
</div>
<div style="width: 1366px;height: 600px;background: none;display: none;" id="bv">
    <div style="width: 100%;height: 220px;background: url(../../../uploaddir/timg.jpg);">
        <div id = "result"></div>
        <div id = "result1"></div>
        <div id = "result2"></div>
        <form action="/b/upRoom" method="post" enctype="multipart/form-data">
            <input id="pic" class="input ca" id="file" type="file" name="files" accept = "image/*" onchange = "selectFile()"/>
            <input id="pic1" class="input cb" id="file1" type="file" name="files" accept = "image/*" onchange = "selectFilea()"/>
            <input id="pic2" class="input cc" id="file2" type="file" name="files" accept = "image/*" onchange = "selectFileb()"/>
            <div style="width: 650px;height: 40px;background: url(../../../uploaddir/timg.jpg);position: absolute;top: 530px;left: 325px">
                <label style="color:red;position: relative;top: 8px;left: 45px;font-size: 14px ;font-weight: bolder">房&nbsp;间&nbsp;号&nbsp;码</label>
                <input style="position: relative;top: 3px;left: 100px;height: 30px;width: 280px" type="text" name="rnumber">
            </div>
            <div style="width: 650px;height: 40px;background: url(../../../uploaddir/timg.jpg);position: absolute;top: 590px;left: 325px">
                <label style="color:red;position: relative;top: 8px;left: 45px;font-size: 14px ;font-weight: bolder">房&nbsp;间&nbsp;类&nbsp;型</label>
                <select name="rvarious" style="position: relative;top: 3px;left: 100px;height: 30px;width: 283px;color:red;font-weight: bolder">
                    <option value="钟点房">钟点房</option>
                    <option value="单人房">单人房</option>
                    <option value="双人房">双人房</option>
                    <option value="家庭房">家庭房</option>
                    <option value="总统套房">总统套房</option>
                    <option value="主题套房">主题套房</option>
                    <option value="派对专属">派对专属</option>
                </select>
            </div>
            <div style="width: 650px;height: 40px;background: url(../../../uploaddir/timg.jpg);position: absolute;top: 650px;left: 325px">
                <label style="color:red;position: relative;top: 8px;left: 45px;font-size: 14px ;font-weight: bolder">房&nbsp;间&nbsp;描&nbsp;述</label>
                <select name="rintro" style="position: relative;top: 3px;left: 100px;height: 30px;width: 280px;color:red;">
                    <option value="有窗-楼上-独立卫浴">有窗-楼上-独立卫浴</option>
                    <option value="无窗-地下-公共卫浴">无窗-地下-公共卫浴</option>
                    <option value="有窗-楼上-公共卫浴">有窗-楼上-公共卫浴</option>
                    <option value="无窗-地下-独立卫浴">无窗-地下-独立卫浴</option>
                </select>
            </div>
            <div style="width: 650px;height: 40px;background: url(../../../uploaddir/timg.jpg);position: absolute;top: 710px;left: 325px">
                <label style="color:red;position: relative;top: 8px;left: 45px;font-size: 14px ;font-weight: bolder">房&nbsp;间&nbsp;价&nbsp;格</label>
                <input style="position: relative;top: 3px;left: 100px;height: 30px;width: 280px" type="text" name="rprice">
            </div>
            <input style="position: relative;top: -80px;left: 1080px;width: 160px;height: 120px;font-size: 30px;font-weight: bolder;background: url(../../../uploaddir/timg.jpg);color: white" type="submit" value="上传">
        </form>
    </div>
    <div style="width: 100%;height:30px;background: #0f4a83"></div>
    <div style="width: 100%;height:400px;background: url(../../../uploaddir/timg.jpg);">
        <div style="position: relative;top: 40px;left:30px;width: 260px;height: 240px;background: url(../../../uploaddir/timg.jpg);">
            <p style="font-size: 14px;font-weight: bolder;width: 200px;position: relative;top: 100px;left: 30px;color: white">此页面仅用于商品的上传，简述只能上传十字以内</p>
        </div>
    </div>
</div>
<div style="width: 1366px;height: 400px;background: url(../../../uploaddir/timg.jpg);display: none;" id="cv">
    <table width="1366px">
        <tbody>
        <tr>
            <td style="background: #c1a076;font-weight: bolder"><div style="text-align: center">房间号码</div></td>
            <td style="background: #c1a076;font-weight: bolder"><div style="text-align: center">房间类型</div></td>
            <td style="background: #c1a076;font-weight: bolder"><div style="text-align: center">房间价格</div></td>
            <td style="background: #c1a076;font-weight: bolder"><div style="text-align: center">房间描述</div></td>
            <td style="background: #c1a076;font-weight: bolder"><div style="text-align: center">房间状态</div></td>
            <td style="background: #c1a076;font-weight: bolder"><div style="text-align: center">操作</div></td>
        </tr>
        </tbody>
        <c:forEach var="rooms" items="${room}">
            <tr>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${rooms.rnumber}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${rooms.rvarious}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${rooms.rprice}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${rooms.rintro}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${rooms.rnow}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center"><a href="/b/showPageUser?id=${rooms.rnumber}&rnow=${rooms.rnow}">查看</a></div></td>
            </tr>
        </c:forEach>
    </table>
</div>
<div id="dv" style="width: 1366px;height: 400px;background: url(../../../uploaddir/timg.jpg);display: none;">
    <table width="1366px">
        <tbody>
        <tr>
            <td style="background: #c1a076;font-weight: bolder"><div style="text-align: center">用户</div></td>
            <td style="background: #c1a076;font-weight: bolder"><div style="text-align: center">联系</div></td>
            <td style="background: #c1a076;font-weight: bolder"><div style="text-align: center">card</div></td>
            <td style="background: #c1a076;font-weight: bolder"><div style="text-align: center">房间</div></td>
            <td style="background: #c1a076;font-weight: bolder"><div style="text-align: center">时间</div></td>
            <td style="background: #c1a076;font-weight: bolder"><div style="text-align: center">操作</div></td>
        </tr>
        </tbody>
        <c:forEach var="his" items="${history}" >
            <tr>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${his.username}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${his.phone}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${his.card}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${his.rnumber}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center">${his.date}</div></td>
                <td style="background: #e2e2e2;font-weight: bolder"><div style="text-align: center"><a href="/b/showHistory?id=${his.id}&rnumber=${his.rnumber}">查看</a></div></td>
            </tr>
        </c:forEach>
    </table>
</div>
<div id="ev" style="width: 1366px;height: 400px;display: none;background: url(../../../uploaddir/timg.jpg);">
    <form action="/b/upNews" method="post" enctype="multipart/form-data">
        <table width="1366px" >
            <tr>
                <td colspan="2" style="text-align: center;font-weight: bolder">消息发布</td>
            </tr>
            <tr>
                <td style="text-align: center;font-weight: bolder" >
                    <input id="pid" class="input" style="width: 200px;height:100px" id="files" type="file" name="newsfile" accept = "image/*" onchange = "selectFiles()"/>
                </td>
                <td style="text-align: center;font-weight: bolder" width="1000px" height="200px"><div id = "results"></div></td>

            </tr>
            <tr>
                <td style="text-align: center;font-weight: bolder">消息名称</td>
                <td style="text-align: center;font-weight: bolder">消息内容</td>
            </tr>
            <tr>
                <td style="text-align: center;font-weight: bolder"><input type="text" name="newsname" style="width:364px;height: 50px;"></td>
                <td style="text-align: center;font-weight: bolder"><input type="text" name="newsin" style="width: 995px;height: 50px;"></td>
            </tr>
            <tr>
                <td style="text-align: center;font-weight: bolder" colspan="2" height="30px">
                    <input type="submit" value="发布" style="width: 1366px;height: 50px">
                </td>
            </tr>
        </table>
    </form>
</div>
<div id="fv" style="width: 1366px;height: 400px;background: url(../../../uploaddir/timg.jpg);display: none;">
    <div style="position: absolute;top:240px;left: 0px;background: ghostwhite;width: 1362px;height: 420px;overflow-x: hidden;overflow-y: scroll;">
        <c:forEach var="talks" items="${talk}">
            <div style="background: url(../../../uploaddir/timg.jpg);margin: 15px 20px;height: 40px;border-top-left-radius: 20px;border-bottom-left-radius: 20px">
                <img src="${pageContext.request.contextPath}/resource/image/${talks.file}" width="40px" height="40px" style="border-radius: 20px"/>
                <div style="margin: -35px 0px 0px 50px;">${talks.text}</div>
                <a href="/b/answer?id=${talks.tid}"><div style="margin: -20px 0px 0px 1050px;">回复</div></a>
                <div style="margin: -20px 0px 0px 1130px;">${talks.data}</div>
            </div>
        </c:forEach>

    </div>
</div>
<div id="gv" style="width: 1366px;height: 400px;background: url(../../../uploaddir/timg.jpg);display: none;">
    <div style="position: absolute;top:240px;left: 0px;background: ghostwhite;width: 1362px;height: 420px;overflow-x: hidden;overflow-y: scroll;">
        <c:forEach var="talkmanage" items="${talkManage}">
            <div style="background: #9c9c9c;margin: 15px 20px;height: 40px;border-top-left-radius: 20px;border-bottom-left-radius: 20px">
                <img src="${pageContext.request.contextPath}/resource/image/${talks.file}" width="40px" height="40px" style="border-radius: 20px"/>
                <div style="margin: -35px 0px 0px 50px;">${talkmanage.text}</div>
                <a id="ye" href="/b/yes?tid=${talkmanage.tid}">
                    <input type="hidden" id="tid" value="${talkmanage.tid}">
                    <div style="margin: -20px 0px 0px 950px;">通过</div></a>
                <a id="no" href="/b/no?id=${talkmanage.tid}"><div style="margin: -20px 0px 0px 1030px;">no</div></a>
                <div style="margin: -20px 0px 0px 1100px;">${talkmanage.data}</div>
            </div>
        </c:forEach>

    </div>
</div>
<script src="http://libs.baidu.com/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript">
    function a() {
        document.getElementById('av').style.display="block";
        document.getElementById('bv').style.display="none";
        document.getElementById('cv').style.display="none";
        document.getElementById('dv').style.display="none";
        document.getElementById('ev').style.display="none";
        document.getElementById('fv').style.display="none";
        document.getElementById('gv').style.display="none";
    }
    function b() {
        document.getElementById('av').style.display="none";
        document.getElementById('bv').style.display="block";
        document.getElementById('cv').style.display="none";
        document.getElementById('dv').style.display="none";
        document.getElementById('ev').style.display="none";
        document.getElementById('fv').style.display="none";
        document.getElementById('gv').style.display="none";
    }
    function c() {
        document.getElementById('av').style.display="none";
        document.getElementById('bv').style.display="none";
        document.getElementById('cv').style.display="block";
        document.getElementById('dv').style.display="none";
        document.getElementById('ev').style.display="none";
        document.getElementById('fv').style.display="none";
        document.getElementById('gv').style.display="none";
    }
    function d() {
        document.getElementById('av').style.display="none";
        document.getElementById('bv').style.display="none";
        document.getElementById('cv').style.display="none";
        document.getElementById('dv').style.display="block";
        document.getElementById('ev').style.display="none";
        document.getElementById('fv').style.display="none";
        document.getElementById('gv').style.display="none";
    }
    function e() {
        document.getElementById('av').style.display="none";
        document.getElementById('bv').style.display="none";
        document.getElementById('cv').style.display="none";
        document.getElementById('dv').style.display="none";
        document.getElementById('ev').style.display="block";
        document.getElementById('fv').style.display="none";
        document.getElementById('gv').style.display="none";
    }
    function f() {
        document.getElementById('av').style.display="none";
        document.getElementById('bv').style.display="none";
        document.getElementById('cv').style.display="none";
        document.getElementById('dv').style.display="none";
        document.getElementById('ev').style.display="none";
        document.getElementById('fv').style.display="block";
        document.getElementById('gv').style.display="none";
    }
    function g() {
        document.getElementById('av').style.display="none";
        document.getElementById('bv').style.display="none";
        document.getElementById('cv').style.display="none";
        document.getElementById('dv').style.display="none";
        document.getElementById('ev').style.display="none";
        document.getElementById('fv').style.display="none";
        document.getElementById('gv').style.display="block";
    }
</script>
<script type="text/javascript">
    //var files = document.getElementById('pic').files;
    var form = new FormData();//通过HTML表单创建FormData对象
    var url = '127.0.0.1:8080/'
    function selectFiles() {
        var files = document.getElementById('pid').files;
        console.log(files[0]);
        if (files.length == 0) {
            return;
        }
        var file = files[0];
        //把上传的图片显示出来
        var reader = new FileReader();
        // 将文件以Data URL形式进行读入页面
        console.log(reader);
        reader.readAsBinaryString(file);
        reader.onload = function (f) {
            var result = document.getElementById("results");
            var src = "data:" + file.type + ";base64," + window.btoa(this.result);
            result.innerHTML = '<img src ="' + src + '"/>';
        }
        console.log('file', file);
        ///////////////////
        form.append('file', file);
        console.log(form.get('file'));
    }
    function selectFile() {
        var files = document.getElementById('pic').files;
        console.log(files[0]);
        if (files.length == 0) {
            return;
        }
        var file = files[0];
        //把上传的图片显示出来
        var reader = new FileReader();
        // 将文件以Data URL形式进行读入页面
        console.log(reader);
        reader.readAsBinaryString(file);
        reader.onload = function (f) {
            var result = document.getElementById("result");
            var src = "data:" + file.type + ";base64," + window.btoa(this.result);
            result.innerHTML = '<img src ="' + src + '"/>';
        }
        console.log('file', file);
        ///////////////////
        form.append('file', file);
        console.log(form.get('file'));
    }
    var form = new FormData();//通过HTML表单创建FormData对象
    var url = '127.0.0.1:8080/'
    function selectFilea() {
        var files = document.getElementById('pic1').files;
        console.log(files[0]);
        if (files.length == 0) {
            return;
        }
        var file = files[0];
        //把上传的图片显示出来
        var reader = new FileReader();
        // 将文件以Data URL形式进行读入页面
        console.log(reader);
        reader.readAsBinaryString(file);
        reader.onload = function (f) {
            var result = document.getElementById("result1");
            var src = "data:" + file.type + ";base64," + window.btoa(this.result);
            result.innerHTML = '<img src ="' + src + '"/>';
        }
        console.log('file', file);
        ///////////////////
        form.append('file', file);
        console.log(form.get('file'));
    }
    var form = new FormData();//通过HTML表单创建FormData对象
    var url = '127.0.0.1:8080/'
    function selectFileb() {
        var files = document.getElementById('pic2').files;
        console.log(files[0]);
        if (files.length == 0) {
            return;
        }
        var file = files[0];
        //把上传的图片显示出来
        var reader = new FileReader();
        // 将文件以Data URL形式进行读入页面
        console.log(reader);
        reader.readAsBinaryString(file);
        reader.onload = function (f) {
            var result = document.getElementById("result2");
            var src = "data:" + file.type + ";base64," + window.btoa(this.result);
            result.innerHTML = '<img src ="' + src + '"/>';
        }
        console.log('file', file);
        ///////////////////
        form.append('file', file);
        console.log(form.get('file'));
    }
</script>
<script type="text/javascript">
    $(function () {
        $("/*:input[name='username']*/#yes").click(function () {
            /*var val = $(this).val();*/


            /*val = $.trim(val);*/
            var tid = $("#tid").val();
            /*var password = $("#password").val();*/
            var Tid = $.trim(tid);
            /*var Password = $.trim(password);*/


            if(Tid != ""){
                var url = "/b/yes";
                var args = {"tid":Tid,"time":new Date()};
                $.get(url,args,function (data) {
                    alert(data);
                });
            }
        });
    })
</script>
</body>
</html>

