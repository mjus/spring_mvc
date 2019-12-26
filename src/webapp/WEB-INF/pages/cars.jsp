<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<div align="center">

    <table >
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Series</th>
        </tr>

        <c:forEach var="msq" items="${messages}">
            <tr>
                <td> ${msq.id}</td>
                <td> ${msq.name}</td>
                <td> ${msq.series}</td>
            </tr>
        </c:forEach>
    </table>

</div>
</body>
</html>