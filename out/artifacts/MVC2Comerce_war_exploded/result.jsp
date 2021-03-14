<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.model.ProductFinderBean" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.entity.Product" %><%--
  Created by IntelliJ IDEA.
  User: nguyenthinhan2410
  Date: 3/12/21
  Time: 9:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>list product</title>
</head>
<body>
        <h2>List Products</h2>
<%
    //step 1 : nhan request
    String keywordData = request.getParameter("name");
    if(keywordData == null  || keywordData.trim().isEmpty()){
        //URL rewriting
        response.sendRedirect("search.jsp?msg=Enter your keyword");
        return;
    }
%>
<%--        java thuan tuy giong caach su dung cua jsp tag de tao buoc 2  --%>
<%
    //step 2: call model
//    ProductFinderBean finderBean = new ProductFinderBean();
//    finderBean.setKeyword(keywordData);
//    List<Product> productList = finderBean.getProductByName();
%>
<%--        giong cach tao cua fiderBean // finder vaf finderbean la mot--%>
<%--        su dung jsp tag--%>
<%--        DAY DUOC xem la buoc 2--%>
<jsp:useBean id="finder" class="com.example.model.ProductFinderBean" scope="request"/>
        <c:if test="${requestScope.finder==null}">
            <jsp:forward page="search.jsp"/>
        </c:if>
<%--<jsp:setProperty name="finder" property="keyword" value="<%=keywordData%>"/>--%>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>description</td>
    </tr>

        <c:forEach var="product" items="${finder.allProducts}">
    <tr>
            <td><c:out value="${product.id}"/></td>
            <td><c:out value="${product.name}"/></td>
            <td><c:out value="${product.desc}"/></td>
    </tr>
        </c:forEach>

</table>
</body>
</html>
