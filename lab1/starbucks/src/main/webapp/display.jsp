<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/30/2019
  Time: 10:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="advice.jsp" method="get">

    Starbuck's ${roast.toUpperCase()} Roast Coffees:
    <table border="1">
        <c:forEach var="advi" items="${advice}" varStatus="adviceCounter">
        <c:choose>
        <c:when test="${adviceCounter.count%2==0}">
            <tr style="background-color: cyan">
        </c:when>
            <c:otherwise> <tr style="background-color: yellow" >
                </c:otherwise>

        </c:choose>
            <td>${advi}</td></tr>
        </c:forEach>
    </table>
    <input type="submit" value="Back">
</form>


</body>
</html>
