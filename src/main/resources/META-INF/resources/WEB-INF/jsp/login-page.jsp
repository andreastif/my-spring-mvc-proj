<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <title> My login HTML Page </title>
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
                    <a class="nav-link" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/">To-do's</a>
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
    <div class="row">
        <div class="col"><h1>Welcome, enter your username and password to log-in!</h1></div>
        <div class="col"><h2>Log-in</h2></div>
    </div>


    <form method="post">
        Name: <input type="text" name="name">
        Password: <input type="password" name="password">
        <input type="submit">
    </form>
    <pre id="error-tag">${errorMsg}</pre>
</div>

<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.3/jquery.min.js"></script>
</body>
</html>