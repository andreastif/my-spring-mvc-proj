<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="action" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <%@include file="common/header.jspf" %>
    <title> Login </title>
</head>
<body>
<%@include file="common/navigation.jspf" %>

<div class="container">

    <div class="row">
        <div class="d-flex mx-auto justify-content-center">
            <div class="d-inline-flex justify-content-center h1 mt-3 mb-3" id="WelcomeHeader">
                <p>Welcome to Chili <i class="fa-solid fa-pepper-hot"></i>, ${name}</p>
            </div>
        </div>
    </div>

    <div class="d-flex justify-content-center" id="logInContainer">
        <div class="row">
            <div class="col-auto d-flex justify-content-center" id="ManageTodoBox">
                <h2><a href="list-todos">Manage</a> your todos.</h2>
            </div>
        </div>
    </div>
</div>


<%@include file="common/footer.jspf" %>


<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.3/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/a96db4626a.js" crossorigin="anonymous"></script>
</body>
</html>