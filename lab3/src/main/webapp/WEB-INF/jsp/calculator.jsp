<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Add Product Form</title>
    <link rel="stylesheet" type="text/css" href="resources/css/main.css">
</head>
<body>

<div id="global">
    <form action="calculator" method="post">
        <fieldset>
            <legend>Calculate</legend>
            <p>
                <label for="operand1">Enter First Number: </label>
                <input type="text" id="operand1" name="operand1"
                       tabindex="1">
            </p>
            <p>
                <label for="operator">Category </label>
                <select id="category" name="operator" id="operator">
                    <option value="-"> --Select Operator--</option>

                    <c:forEach var="operator" items="${operators}">
                        <option value="${operator.value}"> ${operator.value}</option>
                    </c:forEach>
                </select>
            </p>
            <p>
                <label for="operand2">Enter Second Number: </label>
                <input type="text" id="operand2"
                       name="operand2" tabindex="2">
            </p>
            <p id="buttons">
                <input id="reset" type="reset" tabindex="4">
                <input id="submit" type="submit" tabindex="5"
                       value="Calculate">
            </p>
        </fieldset>
    </form>
</div>
</body>
</html>
