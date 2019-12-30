<%--
  Created by IntelliJ IDEA.
  User: iuliiamalykh
  Date: 28/12/19
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>General page</title>
</head>
<br>
<div align="center">

    <h2>Welcome!!!</h2><br/>

    <form action="${pageContext.request.contextPath}/login" method="POST">

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
