<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/3/6
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>HTML5响应式用户登录界面模板</title>
    <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
    <meta name="author" content="Vincent Garreau" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <style type="text/css">
        @charset "utf-8";
        /* CSS Document */
        /*Reset*/
        *{box-sizing:content-box;}
        a:hover, a:focus{text-decoration:none;}
        body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td{margin:0;padding:0;}
        table{border-collapse:collapse;border-spacing:0;}
        body{-webkit-text-size-adjust:none;}
        fieldset,img{border:0;}
        img{ vertical-align: top; max-width: 100%; }
        address,caption,cite,code,dfn,em,th,var{font-style:normal;font-weight:normal;}
        ol,ul{list-style:none;}
        caption,th{text-align:left;}
        h1,h2,h3,h4,h5,h6{font-size:100%;font-weight:normal;}
        q:before,q:after{content:'';}
        abbr,acronym {border:0;}
        .clearfix:after{visibility:hidden;display: block;font-size:0;content:" ";clear:both;height:0;}
        * html .clearfix{ zoom: 1; } /* IE6 */
        *:first-child+html .clearfix { zoom: 1; } /* IE7 */
        .cli{ clear:both; font-size:0; height:0; overflow:hidden;display:block;}
        .lclear{clear:left;font-size:0;height:0;overflow:hidden;}
        .fl{float:left;}
        .fr{float:right;}

        /* ֹ
        iframe{nifm2:expression(this.src='about:blank',this.outerHTML='');}
        script{no2js:expression((this.src.toLowerCase().indexOf('http')==0)?document.close():'');}
        */
        /* ıԼ˶
        div{word-wrap: break-word;word-break: normal;}
        p{text-align:justify; text-justify:inter-ideograph;}
        */
        /*general*/
        body{font-size:12px;font-family:'微软雅黑',"宋体","Arial Narrow",Helvetica,sans-serif;color:#000;line-height:1.2;text-align:left;}
        a{color:#333;text-decoration:none;}
        html,body{
            width:100%;
            height:100%;
        }

        canvas{
            display:block;
            vertical-align:bottom;
        }

        .count-particles{
            background: #000022;
            position: absolute;
            top: 48px;
            left: 0;
            width: 80px;
            color: #13E8E9;
            font-size: .8em;
            text-align: left;
            text-indent: 4px;
            line-height: 14px;
            padding-bottom: 2px;
            font-family: Helvetica, Arial, sans-serif;
            font-weight: bold;
        }

        .js-count-particles{
            font-size: 1.1em;
        }

        #stats,
        .count-particles{
            -webkit-user-select: none;
            margin-top: 5px;
            margin-left: 5px;
        }

        #stats{
            border-radius: 3px 3px 0 0;
            overflow: hidden;
        }

        .count-particles{
            border-radius: 0 0 3px 3px;
        }


        #particles-js{
            width: 100%;
            height: 100%;
            position: relative;
            background-image: url(../../uploaddir/301.jpg);
            background-position: 50% 50%;
            background-size: cover;
            background-repeat: no-repeat;
            margin-left: auto;
            margin-right: auto;
        }

        .sk-rotating-plane {
            display: none;
            width: 80px;
            height: 80px;
            margin: auto;
            background-color: white;
            -webkit-animation: sk-rotating-plane 1.2s infinite ease-in-out;
            animation: sk-rotating-plane 1.2s infinite ease-in-out;
            z-index: 1;
            position: absolute;
            top: 50%;
            left: 50%;
            margin-left: -40px;
            margin-top: -80px;
        }
        .sk-rotating-plane.active{display: block;}

        @keyframes sk-rotating-plane{
            0% {
                -webkit-transform: perspective(120px) rotateX(0deg) rotateY(0deg);
                transform: perspective(120px) rotateX(0deg) rotateY(0deg);
            }
            50% {
                -webkit-transform: perspective(120px) rotateX(-180.1deg) rotateY(0deg);
                transform: perspective(120px) rotateX(-180.1deg) rotateY(0deg);
            }
            100% {
                -webkit-transform: perspective(120px) rotateX(-180deg) rotateY(-179.9deg);
                transform: perspective(120px) rotateX(-180deg) rotateY(-179.9deg);
            }
        }

        @keyframes login-small{
            0%{
                transform: scale(1);-moz-transform: scale(1);	/* Firefox 4 */-webkit-transform: scale(1);	/* Safari 和 Chrome */-o-transform: scale(1);	/* Opera */-ms-transform:scale(1); 	/* IE 9 */
            }
            100%{
                transform: scale(0.2);-moz-transform: scale(0.1);	/* Firefox 4 */-webkit-transform: scale(0.2);	/* Safari 和 Chrome */-o-transform: scale(0.1);	/* Opera */-ms-transform:scale(0.1); 	/* IE 9 */
            }
        }

        .login{z-index: 2;position:absolute;width: 350px;border-radius: 5px;height: 500px;background: white;box-shadow: 0px 0px 5px #333333;top: 50%;left: 50%;margin-top: -250px;margin-left: -175px;transition: all 1s;-moz-transition: all 1s;	/* Firefox 4 */-webkit-transition: all 1s;	/* Safari 和 Chrome */-o-transition: all 1s;	/* Opera */}
        .login-top{font-size: 24px;margin-top: 100px;padding-left: 40px;box-sizing: border-box;color: #333333;margin-bottom: 50px;}
        .login-center{width: 100%;box-sizing: border-box;padding: 0 40px;margin-bottom: 30px;}
        .login-center-img{width: 20px;height: 20px;float: left;margin-top: 5px;}
        .login-center-img>img{width: 100%;}
        .login-center-input{float: left;width: 230px;margin-left: 15px;height: 30px;position: relative;}
        .login-center-input input{z-index: 2;transition: all 0.5s;padding-left: 10px;color: #333333;width: 100%;height: 30px;border: 0;border-bottom: 1px solid #cccccc;border-top: 1px solid #ffffff;border-left: 1px solid #ffffff;border-right: 1px solid #ffffff;box-sizing: border-box;outline: none;position: relative;}
        .login-center-input input:focus{border: 1px solid dodgerblue;}
        .login-center-input-text{background: white;padding: 0 5px;position: absolute;z-index: 0;opacity: 0;height: 20px;top: 50%;margin-top: -10px;font-size: 14px;left: 5px;color: dodgerblue;line-height: 20px;transition: all 0.5s;-moz-transition: all 0.5s;	/* Firefox 4 */-webkit-transition: all 0.5s;	/* Safari 和 Chrome */-o-transition: all 0.5s;	/* Opera */}
        .login-center-input input:focus~.login-center-input-text{top: 0;z-index: 3;opacity: 1;margin-top: -15px;}
        .login.active{-webkit-animation: login-small 0.8s ; animation: login-small 0.8s ;animation-fill-mode:forwards;-webkit-animation-fill-mode:forwards}
        .login-button{cursor: pointer;width: 250px;text-align: center;height: 40px;line-height: 40px;background-color: dodgerblue;border-radius: 5px;margin: 0 auto;margin-top: 50px;color: white;}
        .login-end{cursor: pointer;width: 250px;text-align: center;height: 40px;line-height: 40px;background-color: white;border-radius: 5px;margin: 0 auto;margin-top: 30px;color: dodgerblue;font-weight: bolder;}
        button{margin: 0;padding: 0;border:0px;color: white;outline: none;background: dodgerblue}

    </style>
    <%--<link rel="stylesheet" media="screen" href="/resource/css/style.css">
    <link rel="stylesheet" type="text/css" href="/resource/css/reset.css"/>--%>
</head>
<body>

<div id="particles-js">
    <form action="/loginManage" method="post">
        <div class="login">
            <div class="login-top">
                登录
            </div>
            <div class="login-center clearfix">
                <div class="login-center-img"><img src="../../uploaddir/name0.png"/></div>
                <div class="login-center-input">
                    <input type="text" name="username" value="" placeholder="请输入您的用户名" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的用户名'"/>
                    <div class="login-center-input-text">用户名</div>
                </div>
            </div>
            <div class="login-center clearfix">
                <div class="login-center-img"><img src="../../uploaddir/password0.png"/></div>
                <div class="login-center-input">
                    <input type="password" name="password"value="" placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
                    <div class="login-center-input-text">密码</div>
                </div>
            </div>
            <div class="login-button">
                <button type="submit">登陆</button>
            </div>
            <div class="login-end">
                ${errUser}
            </div>
            <div class="login-end">
                ${errPasss}
            </div>
        </div>
        <div class="sk-rotating-plane"></div>
    </form>
</div>

<script src="../../resource/js/particles.min0.js"></script>
<script src="../../resource/js/app0.js"></script>
<div style="text-align:center;">
    <p>更多咨询：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div>
</body>
</html>