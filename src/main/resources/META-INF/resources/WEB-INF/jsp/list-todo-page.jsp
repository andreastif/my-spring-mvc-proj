<%@ taglib prefix="action" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Assistant:wght@400&display=swap" rel="stylesheet">
    <title>Your Chilies</title>
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
    <div>
        <h1 class="mt-3 mb-3"> My Chilies <i class="fa-solid fa-pepper-hot"></i> </h1>
        <hr>
    </div>
    <action:if test="${!empty todoList}">
        <div class="table-responsive-sm">
            <table class="table table-hover align-middle">
                <thead class="table-header table-dark">
                <tr>
                    <th scope="col">Who</th>
                    <th scope="col">What</th>
                    <th scope="col">Description</th>
                    <th scope="col">Finished by</th>
                    <th scope="col">Finished?</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
                </thead>
                <tbody>
                <action:forEach items="${todoList}" var="Todo">
                    <action:set var="done" value="${Todo.done}" scope="page"/>
                    <tr>
                        <td>${Todo.name}</td>
                        <td>${Todo.todoName}</td>
                        <td>${Todo.description}</td>
                        <td>${Todo.targetDate}</td>
                        <action:if test="${done}">
                            <td>Yes</td>
                        </action:if>
                        <action:if test="${!done}">
                            <td>No</td>
                        </action:if>
                        <td><a href="delete-todo?id=${Todo.id}" class="btn btn-outline-danger">Delete</a></td>
                        <td><a href="update-todo?id=${Todo.id}" class="btn btn-outline-secondary">Update</a></td>
                    </tr>
                </action:forEach>
                </tbody>
            </table>
        </div>
        <div class="mt-4">
            <a href="add-todo" class="btn btn-outline-secondary mt">Add Todo</a>
        </div>
    </action:if>
    <action:if test="${empty todoList}">
        <p class="text-muted">It seems like you don't have any to-do's, try adding some.</p>
        <div class="mt-4">
            <a href="add-todo" class="btn btn-outline-secondary mt">Add Todo</a>
        </div>
    </action:if>
</div>
<footer class="d-flex pt-3 justify-content-center navbar-light bg-light fixed-bottom">
    <p class="text-muted">&copy; 2023 Andreas Tiflidis</p>
</footer>
<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.3/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/a96db4626a.js" crossorigin="anonymous"></script>
</body>
</html>