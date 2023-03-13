<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="action" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <title>Add Todo</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Simple-Todo</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/list-todos">My To-do's</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/add-todo">Add To-do</a>
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
    <h1>Add a new Todo</h1>

    <%--@elvariable id="todo" type="Todo"--%>
    <form:form method="post" modelAttribute="todo">

        <fieldset>
            <form:input type="hidden"
                        path="name"
            />
        </fieldset>

        <fieldset>
            <form:label path="todoName">Todo Name: </form:label>
            <form:input type="text"
                        path="todoName"
                        required="required"/>
            <form:errors path="todoName" cssClass="text-warning"/>
        </fieldset>

        <fieldset>
            <form:label path="description">Todo Description: </form:label>
            <form:input type="text"
                        path="description"
                        required="required"
                        cssClass="form-control-sm"/>
            <form:errors path="description" cssClass="text-warning"/>
        </fieldset>

        <fieldset>
            <form:label path="targetDate">Todo Target Date:</form:label>
            <form:input type="date"
                        path="targetDate"
                        required="required"/>
            <form:errors path="targetDate" cssClass="text-warning"/>
        </fieldset>

        <fieldset>
            <form:label path="done"></form:label>
            <form:input
                    type="hidden"
                    path="done"
                    cssClass="form-check-label"/>
        </fieldset>

        <button type="submit" class="btn btn-outline-dark">Submit</button>
    </form:form>
</div>

<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.3/jquery.min.js"></script>
</body>
</html>