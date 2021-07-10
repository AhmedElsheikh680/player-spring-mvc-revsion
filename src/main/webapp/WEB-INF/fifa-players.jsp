<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>players</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%--    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>--%>
<%--    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/>--%>
</head>
<body>
<table class="table table-dark">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Number</th>
        <th scope="col">Address</th>
        <th scope="col">Phone</th>
        <th scope="col">Services</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="player" items="${players}">
        <tr>
            <td>${player.id}</td>
            <td>${player.name}</td>
            <td>${player.number}</td>
            <td>${player.address}</td>
            <td>${player.phone}</td>
            <td>
                <button type="button" class="btn btn-primary">Edit</button>
                <button type="button" class="btn btn-danger">Delete</button>
            </td>
        </tr>

    </c:forEach>


    </tbody>
</table>
<a href="${pageContext.request.contextPath}/fifa/addPlayer" type="submit" class="btn btn-primary">Add Player</a>
</body>
</html>