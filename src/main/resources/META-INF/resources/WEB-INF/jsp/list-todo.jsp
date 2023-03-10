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
            <th>id</th>

        </tr>
        </thead>
        <tbody>
        <action:forEach items="${todos}" var="todo">
            <tr>
                <td>${todo.id}</td>

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