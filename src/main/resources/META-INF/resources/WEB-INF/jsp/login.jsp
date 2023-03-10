<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet">
    <title> My login HTML Page </title>
</head>
<body>

<div class="container">
    <h1>Welcome, enter your username and password to log-in!</h1>
    <h2>Login</h2>
    <pre>${errorMessage}</pre>
    <form method="post">
        Name: <input type="text" name="name">
        Password: <input type="password" name="password">
        <input type="submit">
    </form>
</div>

<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.3/jquery.min.js"></script>
</body>
</html>