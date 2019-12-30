<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello!!!</title>
</head>
<body>
<div align="center">
<jsp:include page="logout.jsp"/>
<br>
<h3>Users</h3>
<hr>
<table border="3">
    <thead>
    <tr>
        <th>ID</th>
        <th>name</th>
        <th>last_name</th>
        <th>email</th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <tr>
        <form action="${pageContext.request.contextPath}/users/add" method="POST">
            <th></th>
            <th><input type="text" name="name"></th>
            <th><input type="text" name="last_name"></th>
            <th><input type="text" name="email"></th>
            <th>
                <input type="submit" value="add"></type>
            </th>
            <th></th>
        </form>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.name}</td>
            <td>${user.last_name}</td>
            <td>${user.email}</td>
            <td>
                <form action="${pageContext.request.contextPath}/users/update/${user.id}" method="GET">
                    <input type="submit" value="Update">
                </form>
            </td>
            <td>
                <form action="${pageContext.request.contextPath}/users/delete/${user.id}" method="POST">
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>