<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>艾特国际酒店</title>
    <style type="text/css">
        * {
            padding: 0px;
            margin: 0px;
        }

        .footer {
            background-color: #525050;
            width: 1360px;
            margin: 0 auto;
            height: 150px;
            overflow: hidden;
            margin-top: 5px;
        }

        .footer-1 {
            width: 340px;
            height: 150px;
            float: left;
            background-color: #000000;
            color: rgb(124, 124, 124);
        }

        .footer-1 li {
            list-style: none;
        }

        .footer-1 h3:hover {
            color: orange;
        }

        .footer-1 a {
            text-decoration: none;
            color: #999;
        }

        .footer-1 a:hover {
            color: orange;
        }

        #ax,
        #bx,
        #cx,
        #dx,
        #ex:hover {
            cursor: pointer;
        }

        #result {
            position: absolute;
            top: 80px;
            left: 90px;
            border-radius: 50%;
            width: 200px;
            height: 200px;
            border: 1px solid #eee;
            background-color:palegoldenrod;
        }

        .input {
            position: absolute;
            top: 250px;
            left: 300px;
            width: 70px;
        }

        #result img {
            border-radius: 50%;
            width: 240px;
            height: 240px;
        }
    </style>
</head>

<body>
<div style="height: 30px;width: 1360px;background: black;margin: 0 auto">
    <a href="/view/jsp/web.jsp" style="color: #eeeeee;position: absolute;top: 5px;left: 1230px">返回首页</a>
</div>
<div style="height: 500px;width: 1360px;background: gray;margin: 0 auto">
    <table style="position: absolute;float: left;">
        <tr>
            <td><img src="${pageContext.request.contextPath}/resource/image/${jsp.file}" width="252px"
                     height="150px" style="border:2px solid white"></td>
        </tr>
        <tr>
            <td style="background: black;color: white" height="67px">
                <div style="text-align: center;font-weight: bolder;" id="ax" onclick="f()">我的信息</div>
            </td>
        </tr>
        <tr>
            <td style="background: black;color: white" height="67px">
                <div style="text-align: center;font-weight: bolder;" id="bx" onclick="f1()">修改头像</div>
            </td>
        </tr>
        <tr>
            <td style="background: black;color: white" height="67px">
                <div style="text-align: center;font-weight: bolder;" id="cx" onclick="f2()">修改信息</div>
            </td>
        </tr>
        <tr>
            <td style="background: black;color: white" height="67px">
                <div style="text-align: center;font-weight: bolder;" id="dx" onclick="f3()">酒店评论</div>
            </td>
        </tr>
        <tr>
            <td style="background: black;color: white" height="67px">
                <div style="text-align: center;font-weight: bolder;" id="ex" onclick="f4()">历史记录</div>
            </td>
        </tr>
    </table>
    <div style="width: 1100px;height: 500px;background: #4c4c4c;position: absolute;top: 33px;right:-10px">
        <div id="ac">
            <table
                    style="width:700px;height:400px;background:white;position: absolute;top: 40px;left: 150px;border-radius: 15px;">
                <div>
                    <tr>
                        <td></td>
                        <td style="background:wheat;text-align: center;font-weight: bolder;color: brown"
                            height="30px">
                            用户:</td>
                        <td style="background: #ecc490;text-align: center;font-weight: bolder;color: brown"
                            height="40px">${jsp.username}</td>

                    </tr>
                    <tr>
                        <td></td>
                        <td style="background:wheat;text-align: center;font-weight: bolder;color: brown"
                            height="30px">
                            密码:</td>
                        <td style="background: #ecc490;text-align: center;font-weight: bolder;color: brown"
                            height="40px">*******</td>

                    </tr>
                    <tr>
                        <td></td>
                        <td style="background:wheat;text-align: center;font-weight: bolder;color: brown"
                            height="30px">
                            性别:</td>
                        <td style="background: #ecc490;text-align: center;font-weight: bolder;color: brown"
                            height="40px">${jsp.sex}</td>

                    </tr>
                    <tr>
                        <td></td>
                        <td style="background:wheat;text-align: center;font-weight: bolder;color: brown"
                            height="30px">
                            年龄:</td>
                        <td style="background: #ecc490;text-align: center;font-weight: bolder;color: brown"
                            height="40px">${jsp.age}</td>

                    </tr>
                    <tr>
                        <td></td>
                        <td style="background:wheat;text-align: center;font-weight: bolder;color: brown"
                            height="30px">
                            联系:</td>
                        <td style="background: #ecc490;text-align: center;font-weight: bolder;color: brown"
                            height="40px">${jsp.phone}</td>

                    </tr>
                    <tr>
                        <td style="background:white;"></td>
                        <td style="background:wheat;text-align: center;font-weight: bolder;color: brown"
                            height="30px">
                            card:</td>
                        <td style="background: #ecc490;text-align: center;font-weight: bolder;color: brown"
                            height="40px">${jsp.card}</td>
                    </tr>
                </div>
            </table>
        </div>
        <div id="bc"
             style="border-radius: 15px;position: absolute;top:40px;left: 150px;background: white;width: 780px;height: 400px;overflow: hidden;">
            <div
                    style="text-align: center;position: absolute;top: 50px;left: 400px;width: 350px;height: 100px;background-color:wheat;border: 2px wheat;border-radius: 40px">
                <font style="font-weight: bolder;font-size: 17px;position: relative;top: 36px" color="black">
                    提示:选中图片后，上传按钮即可使用。
                </font>
            </div>
            <form action="/a/updatefile" method="post" enctype="multipart/form-data">
                <div id="result"></div>
                <input id="pic" class="input" id="file" type="file" name="file" accept="image/*"
                       onchange="selectFile()" />
                <input disabled="disabled" type="submit" value="上传"
                       style="background-color: sandybrown;position: absolute;top: 300px;left: 300px;font-size: 20px; border: none;border-radius: 15px;width: 70px;"
                       id="submit">
            </form>
        </div>
        <div id="cc" style="display: none">
            <form action="/a/upUser" method="post">
                <table width="600px" style="position: absolute;top: 90px;left: 190px" border="1">
                    <tr>
                        <td style="text-align: center;font-size: 18px;color: white" width="300px;">密码</td>
                        <td><input name="password" value="" style="width: 300px;height: 20px"></td>
                    </tr>
                    <tr>

                    </tr>
                    <tr>
                        <td style="text-align: center;font-size: 18px;color: white;height: 20px" width="300px">性别
                        </td>
                        <td><input name="sex" value="" style="width: 300px;height: 20px"></td>
                    </tr>
                    <tr>

                    </tr>
                    <tr>
                        <td style="text-align: center;font-size: 18px;color: white" width="300px">年龄</td>
                        <td><input name="age" value="" style="width: 300px;height: 20px"></td>
                    </tr>
                    <tr>

                    </tr>
                    <tr>
                        <td style="text-align: center;font-size: 18px;color: white" width="300px">联系</td>
                        <td><input name="phone" value="" style="width: 300px;height: 20px"></td>
                    </tr>
                    <tr>

                    </tr>
                    <tr>
                        <td>
                            <input type="submit" style="width: 300px;height: 30px" value="更新">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        <div id="dc" style="display: none">
            <form action="/a/uptalk" method="post">
                <table border="1">
                    <tr>
                        <td width="200px">
                                <textarea name="talk" value="" style="height: 450px;width: 200px">
                                </textarea></td>
                    </tr>
                </table>
                <input type="submit" value="发表"
                       style="font-size:18px;font-weight:bolder;width: 210px;border-radius: 15px;height: 40px;border-style: none;background-color:sandybrown;">
            </form>
            <div
                    style="position: absolute;top:50px;left: 210px;background:white;width: 780px;height:400px;overflow: hidden;border-radius: 15px;">
                <c:forEach var="talks" items="${talk}">
                    <div style="background: #9c9c9c;margin: 15px 20px;height: 40px;">
                        <img src="${pageContext.request.contextPath}/resource/image/${talks.file}" width="40px"
                             height="40px" style="border-radius: 20px" />
                        <div style="margin: -35px 0px 0px 50px;">${talks.text}</div>
                        <a href="/a/showAnswer?id=${talks.id}">
                            <div style="margin: -20px 0px 0px 500px;">查看</div>
                        </a>
                        <div style="margin: -20px 0px 0px 550px;">${talks.data}</div>
                    </div>
                </c:forEach>

            </div>
        </div>
        <div id="ec" style="display: none">
            <div
                    style="border-radius: 15px;position: absolute;top:60px;left: 120px;background: white;width: 780px;height: 400px;overflow: hidden;">
                <c:forEach var="order" items="${orders}">
                    <div style="background: #9c9c9c;margin: 15px 20px;height: 40px;">
                        <img src="${pageContext.request.contextPath}/resource/image/${order.file}" width="40px"
                             height="40px" style="border-radius: 20px" />
                        <div style="margin: -35px 0px 0px 70px;">用户：${order.username}</div>
                        <div style="margin: -20px 0px 0px 270px;">房间：${order.rnumber}</div>
                        <div style="margin: -20px 0px 0px 470px;">时间：${order.date}</div>
                    </div>
                </c:forEach>

            </div>
        </div>
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
        <span><a href="#"><img src="../../../uploaddir/password0.png"></a></span>
        <span><a href="#"><img src="../../../uploaddir/password0.png"></a></span>
        <span><a href="#"><img src="../../../uploaddir/password0.png"></a></span>
        <span><a href="#"><img src="../../../uploaddir/password0.png"></a></span>
    </div>
</div>
<script src="http://libs.baidu.com/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript">
    var submit = document.getElementById("submit");
    //var files = document.getElementById('pic').files;
    var form = new FormData();//通过HTML表单创建FormData对象
    var url = '127.0.0.1:8080/'
    function selectFile() {
        submit.disabled = false;
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
    var ac = document.getElementById("ac");
    var bc = document.getElementById("bc");
    var cc = document.getElementById("cc");
    var dc = document.getElementById("dc");
    var ec = document.getElementById("ec");
    function f() {
        ac.style.display = "block";
        bc.style.display = "none";
        cc.style.display = "none";
        dc.style.display = "none";
        ec.style.display = "none";
    }
    function f1() {
        ac.style.display = "none";
        bc.style.display = "block";
        cc.style.display = "none";
        dc.style.display = "none";
        ec.style.display = "none";
    }
    function f2() {
        ac.style.display = "none";
        bc.style.display = "none";
        cc.style.display = "block";
        dc.style.display = "none";
        ec.style.display = "none";
    }
    function f3() {
        ac.style.display = "none";
        bc.style.display = "none";
        cc.style.display = "none";
        dc.style.display = "block";
        ec.style.display = "none";
    }
    function f4() {
        ac.style.display = "none";
        bc.style.display = "none";
        cc.style.display = "none";
        dc.style.display = "none";
        ec.style.display = "block";
    }

</script>
</body>

</html>