<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/3/6
  Time: 21:35
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
        .one{
            height: 0px;
            width: 1330px;
            background: black;
        }
        .body{
            height: 614.4px;
            width: 1400px;
            background: url("../../uploaddir/logo_bg0.jpg");
            background-repeat:no-repeat;
            background-size:100% 100%;
        }
        #result{
            position:absolute;
            top: 70px;left: -500px;
            border-radius: 50%;
            width: 150px;
            height:150px;
            border:1px solid #eee;
        }
        #result img{
            border-radius: 50%;
            width: 150px;
            height:150px;
        }
        .input{
            position: absolute;
            top: 250px;
            left: -460px;
            width:70px;
        }
        label{
            font-size: 16px;
            font-weight: bolder;
            color: black;
        }

        @-moz-document url-prefix() { input { width:65px; } }/*单独对火狐进行设置*/
    </style>
</head>
<body>
<div class="one">
    <div style="width: 250px;height: 26px;border-radius: 25px;background: white;position: absolute;top: 5px;left: 550px">
        <center>
            <font style="color: red;font-weight: bolder;font-size: 18px">&nbsp;艾&nbsp;特&nbsp;国&nbsp;际&nbsp;酒&nbsp;店</font>
        </center>
    </div>

    <a href="/view/jsp/load.jsp"  id="pb" style="position: absolute;left: 1240px;top: 15px;color: white">
        用户登陆
    </a>
</div>
<div class="body">
    <div style="width: 400px;height: 500px;position: absolute;top: 100px;right: 80px;">
        <form action="/registerSuccess" method="post" enctype="multipart/form-data">
            <div id = "result"></div>
            <input id="pic" class="input" id="file" type="file" name="file" accept = "image/*" onchange = "selectFile()"/>
            <label style="position: absolute;top: 30px;left: -200px;">用&nbsp;&nbsp;&nbsp;&nbsp;户:</label>
            <input style="position: absolute;top: 30px;left: -100px;" id="username" type="text" name="username"><div style="position: absolute;top: 240px;right: 80px" id="message"></div>
            <label style="position: absolute;top: 80px;left: -200px">密&nbsp;&nbsp;&nbsp;&nbsp;码:</label>
            <input style="position: absolute;top: 80px;left: -100px" id="password" type="password" name="password">
            <label style="position: absolute;top: 130px;left: -200px">性&nbsp;&nbsp;&nbsp;&nbsp;别:</label>
            <label style="position: absolute;top:130px;left: -100px">男</label>
            <input style="position: absolute;top: 135px;left: -80px" id="male" type="radio" name="sex" value="0">
            <label style="position: absolute;top: 130px;left:  -30px">女</label>
            <input style="position: absolute;top: 135px;left: -10px" id="female" type="radio" name="sex" value="1">
            <label style="position: absolute;top: 180px;left: -200px">电&nbsp;&nbsp;&nbsp;&nbsp;话:</label>
            <input style="position: absolute;top: 180px;left: -100px" id="phone" type="text" name="phone">
            <label style="position: absolute;top: 230px;left: -200px">身&nbsp;&nbsp;&nbsp;&nbsp;份&nbsp;&nbsp;&nbsp;&nbsp;证:</label>
            <input style="position: absolute;top: 230px;left: -100px" id="card" type="text" name="card">
            <label style="position: absolute;top: 280px;left: -200px">年&nbsp;&nbsp;&nbsp;&nbsp;龄:</label>
            <input style="position: absolute;top: 280px;left: -100px"  type="text" name="age">
            <input style="position: absolute;top: 330px;left: 100px;" type="submit" value="注册">
        </form>
    </div>
</div>

</div>
<!-- <button onclick = "handIn()">提交</button> -->
<script type="text/javascript">
    //var files = document.getElementById('pic').files;
    var form = new FormData();//通过HTML表单创建FormData对象
    var url = '127.0.0.1:8080/'
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
</script>
<script src="http://libs.baidu.com/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript">
    function f1() {
        if ($("#password").val()!=$("#rpassword").val()){
            alert("密码不一致");
            document.getElementById("again").innerHTML="123456";
        }
    }
    function f() {
        var file = document.getElementById('file');
        var username = document.getElementById('username');
        var password = document.getElementById('password');
        var rpassword = document.getElementById('rpassword');
        var male = document.getElementById('male');
        var female = document.getElementById('female');
        var phone = document.getElementById('phone');
        var submit = document.getElementById('submit');
        if (($("#username").val()!="")&&($("#file").val()!="")&&($("#password").val()!="")
            &&($("#male").val()!=""||($("#female").val()!=""))&&($("#phone").val()!="")){
            submit.disabled = false;
        }

        /*if (password.innerHTML==""){
            rpassword.disabled="disabled";
        }*/
        /*if(file.innerHTML!=""&&username.innerHTML!=""&&password.innerHTML!=""&&(male.innerHTML!=""||female.innerHTML!="")||phone.innerHTML!=""){
            submit.disabled=false;
        }*/
    }


    $(function () {
        $("/*:input[name='username']*/#username").change(function () {
            /*var val = $(this).val();*/


            /*val = $.trim(val);*/
            var username = $("#username").val();
            /*var password = $("#password").val();*/
            var Username = $.trim(username);
            /*var Password = $.trim(password);*/


            if(Username != ""){
                var url = "/load";
                var args = {"userName":Username,"time":new Date()};
                $.post(url,args,function (data) {
                    $("#message").html(data);
                });
            }
        });
    })
</script>

</body>
</html>