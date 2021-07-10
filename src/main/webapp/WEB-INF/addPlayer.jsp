<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>players</title>
    <style>

    </style>
    <link rel="stylesheet" href="${pageCoontext.request.contextPath}/resources/css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%--    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>--%>
<%--    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/>--%>
</head>
<body>
<form:form  action="${pageContext.request.contextPath}/fifa/save" modelAttribute="player" method="get">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputEmail4">Name</label>
            <form:input path="name" class="form-control" id="inputEmail4" placeholder="Name" />
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Number</label>
            <form:input path="number" class="form-control" id="inputPassword4" placeholder="Number" />
        </div>
    </div>
    <div class="form-group">
        <label for="inputAddress">Address</label>
        <form:input path="address" class="form-control" id="inputAddress" placeholder="Address" />
    </div>
    <div class="form-group">
        <label for="inputAddress2">Phone </label>
        <form:input path="phone" class="form-control" id="inputAddress2" placeholder="Phone" />
    </div>
<br>

    <button type="submit" class="btn btn-primary">Add !</button>
</form:form>


</body>
</html>