<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <th>last_name</th>
            <th>email</th>
            <th></th>
            <th></th>
        </tr>
        </thead>
        <tr>
            <form action="/users" method="post">
                <th><input type="hidden" name="action" value="add"></th>
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
                <td> ${user.id}</td>
                <td> ${user.name}</td>
                <td> ${user.last_name}</td>
                <td> ${user.email}</td>
                <td>
                    <form action="/users" method="get">
                        <input type="hidden" name="action" value="update">
                        <input type="hidden" name="id" value=${user.id}>
                        <input type="submit" value="update"></type>
                    </form>
                </td>
                <td>
                    <form action="/users" method="post">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="id" value=${user.id}>
                        <input type="submit" value="delete"></type>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>
</body>
</html>