<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Add Product Form</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<div id="global">
    <c:if test="${errors != null}">

        <p id="errors">
            Error(s)!
        <ul>
            <c:forEach var="error" items="${errors}">
                <li>${error}</li>
            </c:forEach>
        </ul>


    </c:if>

    <form action="calculate" method="post">
        <fieldset>
            <legend>Calculate</legend>
            <p>
                <label for="operand1">Enter first number: </label>
                <input type="text" id="operand1" name="operand1" value="${form.operand1}">
            </p>
            <p>
                <label for="operator">Enter operator (+ - *): </label>
                <input type="text" id="operator" placeholder="+ - *"
                       name="operator" value="${form.operator}">
            </p>
            <p>
                <label for="operand2">Enter second number: </label>
                <input type="text" id="operand2" name="operand2" value="${form.operand2}">
            </p>
            <p id="buttons">
                <input id="reset" type="reset">
                <input id="submit" type="submit" value="Calcuate">
            </p>
        </fieldset>
    </form>
</div>
</body>
</html>
