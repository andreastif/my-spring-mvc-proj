<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title> Login </title>
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
    <div class="row">
        <div class="d-flex mx-auto justify-content-center justify">
            <div class="d-inline-flex justify-content-center h1 mt-3 mb-3" id="WelcomeHeader">
                <p>Welcome to Chili <i class="fa-solid fa-pepper-hot"></i></p>
            </div>
        </div>
    </div>

    <div class="d-flex justify-content-center" id="logInContainer">
        <div class="row">
            <div class="col-auto logInBox" >
                <div class="h2 mb-4 mt-6 d-flex justify-content-center">Enter your credentials</div>
                <div class="h3-1 pt-2"><i id="loginHand"
                                               class="fa-regular fa-hand-point-down fa-2xl d-flex justify-content-center"></i>
                </div>
                <div class="form-group d-flex justify-content-center align-content-center mt-4">
                    <form:form method="post">
                        <pre id="error-tag">${errorMsg}</pre>

                        <div class="mb-3">
                            <input type="text" class="form-control" placeholder="Username" name="name">
                        </div>

                        <div class="mb-3">
                            <input type="password" class="form-control" placeholder="Password" name="password">
                        </div>

                        <div class="mb-3">
                            <button type="submit" class="btn btn-outline-dark">Submit</button>
                        </div>
                    </form:form>
                </div>
            </div>
            <div class="col">
                <div class="ms-1">

                </div>
            </div>
        </div>
    </div>

</div>


<footer class="d-flex pt-3 justify-content-center navbar-light bg-light fixed-bottom">
    <p class="text-muted">&copy; 2023 Andreas Tiflidis</p>
</footer>


<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.3/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/a96db4626a.js" crossorigin="anonymous"></script>
</body>
</html>