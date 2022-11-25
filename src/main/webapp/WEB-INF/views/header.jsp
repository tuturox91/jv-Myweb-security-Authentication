<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="myHeader">
    <form   class="headerButton" action="${pageContext.request.contextPath}/index">
        <input type="submit" value="Menu" />
    </form>
    <form   class="headerButton" action="${pageContext.request.contextPath}/logout">
        <input type="submit" value="Logout" />
    </form>
    <p class="headerText"> Login: <%=request.getSession().getAttribute("driverName")%></p>
</div>
</body>
</html>
