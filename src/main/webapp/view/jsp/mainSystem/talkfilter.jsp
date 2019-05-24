<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/4/13
  Time: 11:20
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
        a{
            color: white;
        }
        .div{
            height: 200px;
            width: 1366px;
            margin: 0 auto;
            background: url(../../../uploaddir/picture80.jpg);
            background-repeat:no-repeat;
            background-size:100% 100%;
        }
    </style>
</head>
<body>
<div style="width: 1366px;height: 30px;background: rgb(8, 40, 180)">
    <img src="../../../uploaddir/picture40.jpg" width="60px" height="30px" style="position: absolute;left: 1270px;opacity: 0.8">
    <a href="/view/jsp/mainSystem/manage.jsp" style="position: absolute;top: 5px;left: 1200px">返回主页</a>
</div>
<div class="div"></div>
<div style="width: 1366px;height: 10px;background: rgb(84, 49, 211)"></div>
<div id="gv" style="width: 1366px;height: 400px;background: #767bc1">
    <div style="position: absolute;top:240px;left: 0px;background: #e9f16ec0;width: 1362px;height: 420px;overflow-x: hidden;overflow-y: scroll;">
        <c:forEach var="talkmanage" items="${talkManage}">
            <div style="background: #89a2e9;margin: 15px 20px;height: 40px;border-top-left-radius: 20px;border-bottom-left-radius: 20px">
                <img src="${pageContext.request.contextPath}/resource/image/${talkmanage.file}" width="40px" height="40px" style="border-radius: 20px"/>
                <div style="margin: -35px 0px 0px 50px;">${talkmanage.text}</div>
                <a id="yes" href="/b/yes?id=${talkmanage.tid}"><div style="margin: -20px 0px 0px 950px;">通过</div></a>
                <a id="no" href="/b/no?id=${talkmanage.tid}"><div style="margin: -20px 0px 0px 1030px;">no</div></a>
                <div style="margin: -20px 0px 0px 1100px;">${talkmanage.data}</div>
            </div>
        </c:forEach>

    </div>
</div>
</body>
</html>