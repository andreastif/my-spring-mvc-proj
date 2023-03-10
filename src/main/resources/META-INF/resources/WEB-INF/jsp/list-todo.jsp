<%@ taglib prefix="action" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <title>Your Todos</title>
</head>
<body>
<div class="container">
    <h1>Your Todos </h1>
    <table class="table">
        <thead>
        <tr>
            <th>Todo id</th>
            <th>Who</th>
            <th>What</th>
            <th>Description</th>
            <th>Finished by</th>
            <th>Is done</th>

        </tr>
        </thead>
        <tbody>
        <action:forEach items="${todoList}" var="Todo">
            <tr>
                <td>${Todo.id}</td>
                <td>${Todo.name}</td>
                <td>${Todo.todo}</td>
                <td>${Todo.description}</td>
                <td>${Todo.targetDate}</td>
                <td>${Todo.done}</td>
            </tr>
        </action:forEach>
        </tbody>
    </table>
    <a href="add-todo" class="btn btn-success">Add Todo</a>
</div>

<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.3/jquery.min.js"></script>
</body>
</html>