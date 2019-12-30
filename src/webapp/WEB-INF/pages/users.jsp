<%--
  Created by IntelliJ IDEA.
  User: iuliiamalykh
  Date: 20/12/19
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org">
<html>
<head>
    <title>Users</title>
</head>
<body>
<div align="center">
    <h3>Users</h3>

    <table border="3">
        <thead>
        <tr>
            <th>ID</th>
            <th>name</th>
            <th>password</th>
            <th>email</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tr>
            <form action="${pageContext.request.contextPath}/admin/users/add" method="POST">
                <th></th>
                <th><input type="text" name="name"></th>
                <th><input type="text" name="password"></th>
                <th><input type="text" name="email"></th>
                <th>
                    <input type="submit" value="add"></type>
                </th>
                <th></th>
            </form>
        </tr>
        </thead>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.password}</td>
                <td>${user.email}</td>
                <td>
                    <form action="${pageContext.request.contextPath}/admin/users/update/${user.id}" method="GET">
                        <input type="submit" value="update">
                    </form>
                </td>
                <td>
                    <form action="${pageContext.request.contextPath}/admin/users/delete/${user.id}" method="POST">
                        <input type="submit" value="delete">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="/logout">logout</a></div>

</div>
</body>
</html>