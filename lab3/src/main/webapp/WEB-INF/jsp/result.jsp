<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Save Product</title>
    <link rel="stylesheet"
          href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<c:url value = "/resources/css/main.css"/>">
</head>
<body>
<div id="global">
    <h4>The result has been calculated.</h4>

    <h5>Results:</h5>
     ${calculator.operand1}     ${calculator.operator} ${calculator.operand2}  = ${calculator.result}

</div>
</body>
</html>