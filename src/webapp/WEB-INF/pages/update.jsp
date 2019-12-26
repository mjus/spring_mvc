<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update user</title>
</head>
<br>
<div align="center">

    <h2>Update user</h2><br/>

    <form method="post" action="/users">

        <table border="3">
            <tr>
                <th><label><input type="text" name="name"></label></th>
                <th>name</th>
                <input type="hidden" name="action" value="update">
                <input type="hidden" name="id" value=${user.id}>
            </tr>
            <tr>
                <th><label><input type="text" name="last_name"></label></th>
                <th>surname</th>
            </tr>
            <tr>
                <th><label><input type="text" name="email"></label></th>
                <th>email</th>
            </tr>
            <tr>
                <th>
                    <input type="submit" value="edit" name="edit">
                </th>
                <th></th>
            </tr>

        </table>
    </form>

</div>
</html>