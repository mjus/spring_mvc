<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update user</title>
</head>
<br>
<div align="center">

    <h2>Update user</h2><br/>

    <form action="${pageContext.request.contextPath}/users/update/${user.id}" method="POST">

        <table border="3">
            <tr>
                <th>${user.name}</th>
                <th><label><input type="text" name="name"></label></th>
                <th>name</th>
            </tr>
            <tr>
                <th>${user.last_name}</th>
                <th><label><input type="text" name="last_name"></label></th>
                <th>last_name</th>
            </tr>
            <tr>
                <th>${user.email}</th>
                <th><label><input type="text" name="email"></label></th>
                <th>email</th>
            </tr>
            <tr>
                <th></th>
                <th>
                    <input type="submit" value="edit" name="edit">
                </th>
                <th></th>
            </tr>

        </table>
    </form>

</div>
</html>