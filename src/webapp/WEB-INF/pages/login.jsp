
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>General page</title>
</head>
<br>
<div align="center">

    <h2>Welcome!!!</h2><br/>


    <div th:if="${param.error}">
    </div>
    <div th:if="${param.logout}">
    </div>

    <form method="post" action="login">

        <table border="3">
            <tr>
                <th><label><input type="text" name="email"></label></th>
                <th>email</th>
            </tr>
            <tr>
                <th><label><input type="text" name="password"></label></th>
                <th>password</th>
            </tr>
            <tr>
                <th>
                    <button type="submit">OK</button>
                </th>
                <th></th>
            </tr>

        </table>
    </form>

</div>
</html>
