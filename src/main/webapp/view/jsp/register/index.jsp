<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/4/19
  Time: 8:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table width="1366px" border="1">
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
</body>
</html>
