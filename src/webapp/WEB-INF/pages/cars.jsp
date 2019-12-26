<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<div align="center">

    <table border="3">
        <thead>
        <tr>
            <th>ID</th>
            <th><spring:message code="label.name"/></th>
            <th><spring:message code="label.series"/></th>
        </tr>
        </thead>

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