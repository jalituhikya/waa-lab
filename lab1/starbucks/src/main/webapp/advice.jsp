<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/30/2019
  Time: 10:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Ask for advice</h2>
<form action="AdviceServlet" method="get">
    <select name="roast">
    <option value="-">__Chose Rost__
    <option value="dark">Dark</option>
    <option value="medium">Medium</option>
    <option value="light">Light</option>
        </select><br><br>
    <input type="submit" value="submit"><br><br>
</form>

</body>
</html>
