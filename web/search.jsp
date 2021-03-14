<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nguyenthinhan2410
  Date: 3/12/21
  Time: 9:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>search product
    </title>
</head>
<body>
<form action="ServletController" method="get">
    <span style="color: red;">
        <c:out value="${param.msg}"/>

    </span>
    <input type="text" name="name">
<%--    neu input khong co type thi mac dinh cua no la text--%>

    <input type="submit">
</form>


</body>
</html>
