<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form  class="myHeader" action="${pageContext.request.contextPath}/logout">
    <input class="headerButton" type="submit" value="Logout" />
    <p class="headerText">Login: <%=request.getSession().getAttribute("driver_name")%></p>
</form>
</body>
</html>
