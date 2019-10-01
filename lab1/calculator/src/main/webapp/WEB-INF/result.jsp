<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: Admin--%>
<%--  Date: 9/30/2019--%>
<%--  Time: 6:38 PM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"--%>
<%--         pageEncoding="ISO-8859-1"%>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<!DOCTYPE html>--%>
<%--<head>--%>
<%--    <title>Simple Calculator</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<h3>Calculation Result</h3>--%>
<%--<form >--%>
<%--    <input name="num1" type="text" readonly value="${num1}"/>+--%>
<%--    <input name="num2" type="text" readonly value="${num2}">=--%>
<%--    <input name="sum" type="text" readonly value="${sum}">--%>
<%--    <br>--%>
<%--    <input name="num3" type="text" readonly value="${num3}"/>+--%>
<%--    <input name="num4" type="text" readonly value="${num4}">=--%>
<%--    <input name="product" type="text" readonly value=<c:out value="${product}"/>>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h4>Calculator Results</h4>
<form >
    <input name="num1" type="text"  readonly  value="${num1}"/>+
    <input name="num2" type="text"  readonly value=<c:out value="${num2}"/>>=
    <input name="sum" type="text"  readonly value=<c:out value="${sum}"/>>
    <br>

    <input name="num3" type="text"  readonly value=<c:out value="${num3}"/>>*
    <input name="num4" type="text"  readonly value=<c:out value="${num4}"/>>=
    <input name=product" type="text" readonly value=<c:out value="${product}"/>>
    <br>
</form>
<a href="Calculator" class="button">Would You like to Try again?</a>
</body>
</html>