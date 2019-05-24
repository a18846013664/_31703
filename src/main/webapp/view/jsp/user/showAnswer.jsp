<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/4/6
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <style type="text/css">
        *{
            padding: 0px;
            margin: 0px;
        }
    </style>
</head>
<body>
<div style="width: 1366px;height: 30px;background: brown">
    <a href="/view/jsp/user/main.jsp" style="position: absolute;top: 5px;left: 1200px">返回主页</a>
</div>
<div style="background: #212121;width: 1360px;height: 600px;overflow-x: hidden;overflow-y: scroll;">
    <c:forEach var="answers" items="${answer}">
        <div style="background: #9c9c9c;height:20px;margin:20px 20px;border-top-left-radius: 20px;border-bottom-left-radius: 20px">
            <div style="position: relative;top:-1px;left: 20px;color: white">${answers.text}</div>
            <div style="color:white;position: relative;top:-21px;left: 1100px">${answers.data}</div>
        </div>
    </c:forEach>

</div>
</body>
</html>
