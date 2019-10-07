<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registration</title>
</head>
<body>

<h1>Registration Form</h1><br/>

<spring:url var="registration" value="registration"/>

<form:form action="registration" modelAttribute="student" method="post">
    <p>
        <label for="firstName">First Name:</label>
        <form:input path="firstName"/>
    </p>
    <p>
        <label for="lastName">Last Name:</label>
        <form:input path="lastName"/>
    </p>
    <p>
        <label for="gender">Gender:</label>
        <form:input path="gender"/>
    </p>
    <p>
        <label for="email">Email:</label>
        <form:input path="email"/>
    </p>
    <p>
        <label for="birthday">Birthday</label>
        <form:input path="birthday"/>
    </p>
   <%-- <p>
        <label for="phone">Phone:</label>
        <form:input path="phone"/>
    </p>--%>

    <input type="submit" id="submit" value="Submit">
</form:form>


</body>
</html>