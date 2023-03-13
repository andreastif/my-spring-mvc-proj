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
<%@include file="common/navigation.jspf"%>

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
                <div class="form-group d-flex justify-content-center align-content-center mt-4">
                    <form:form method="post">
                        <pre id="error-tag">${errorMsg}</pre>

                        <div class="mb-3">
                            <input type="text" class="form-control" placeholder="Username" name="name">
                        </div>

                        <div class="mb-3">
                            <input type="password" class="form-control" placeholder="Password" name="password">
                        </div>

                        <div class="mb-3 pt-2 d-flex justify-content-center">
                            <button type="submit" class="btn btn-outline-dark">Log-in</button>
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


<%@include file="common/footer.jspf"%>


<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.3/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/a96db4626a.js" crossorigin="anonymous"></script>
</body>
</html>