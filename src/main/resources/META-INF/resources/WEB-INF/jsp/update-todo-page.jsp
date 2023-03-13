<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="action" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <title>Update Todo</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Chili <i class="fa-solid fa-pepper-hot"></i> </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/list-todos">My Chilies</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/add-todo">Add Chili</a>
                </li>
            </ul>
            <div class="float-right">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
<div class="container">
    <h1 class="h1 mt-3">Update Chili <i class="fa-solid fa-pepper-hot"></i></h1>

    <%--@elvariable id="todo" type="Todo"--%>
    <form:form method="post" modelAttribute="todo">

    <div class="form-group">
        <div class="row g-1 mt-2">
            <div class="col-auto mt-3">
                <fieldset>
                    <form:label path="todoName" cssClass="col-form-label">Name</form:label>
                    <form:input type="text"
                                path="todoName"
                                required="required"
                                cssClass="form-control"/>
                    <form:errors path="todoName" cssClass="text-warning"/>
                </fieldset>
            </div>
        </div>

        <div class="row g-1 mt-2">
            <div class="col-auto mt-3">
                <fieldset>
                    <form:label path="description" cssClass="col-form-label">Description</form:label>
                    <form:input type="text"
                                path="description"
                                required="required"
                                cssClass="form-control"/>
                    <form:errors path="description" cssClass="text-warning"/>
                </fieldset>
            </div>
        </div>


        <div class="row g-1 mt-2">
            <div class="col-auto mt-3">
                <fieldset>
                    <form:label path="targetDate" cssClass="col-form-label">Target Date</form:label>
                    <form:input type="date"
                                path="targetDate"
                                required="required"
                                cssClass="form-control"/>
                    <form:errors path="targetDate" cssClass="text-warning"/>
                </fieldset>
            </div>
        </div>
        <div class="row g-1 mt-2">
            <div class="col-auto mt-3">
                <fieldset>
                    <form:label path="done" cssClass="form-check-label" id="checkMe">Finished </form:label>
                    <form:checkbox
                            for="checkMe"
                            path="done"
                            cssClass="form-check-input"/>
                </fieldset>
            </div>
        </div>
        <div class="row g-1 mt-2">
            <div class="col-1 mt-3">
                <button type="submit" class="btn btn-outline-dark">Submit</button>
            </div>
        </div>
    </form:form>
</div>

<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.3/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/a96db4626a.js" crossorigin="anonymous"></script>
</body>
</html>