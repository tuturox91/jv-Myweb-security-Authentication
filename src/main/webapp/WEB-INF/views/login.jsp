<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Sign In</title>
</head>
<body>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
    <h1 class="table_dark">Sign In:</h1>
    <table border="1" class="table_dark">
        <tr>
            <th>Login</th>
            <th>Password</th>
            <th>Sign In</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="login" form="login" required>
            </td>
            <td>
                <input type="text" name="password" form="login" required>
            </td>
            <td>
                <input type="submit" name="Submit" form="login">
            </td>
        </tr>
    </table>
<h4 class="errorMessage">${errorMsg}</h4>
<form class="centerForm" action="${pageContext.request.contextPath}/drivers/add">
    <input type="submit" value="Sign up" />
</form>
</body>
</html>
