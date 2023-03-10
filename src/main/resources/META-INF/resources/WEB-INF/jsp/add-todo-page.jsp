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
<div class="container">
    <h1>Welcome ${name}, add your new Todo!</h1>

    <%--@elvariable id="todo" type="Todo"--%>
    <form:form method="post" modelAttribute="todo">


        <form:input type="hidden"
                    path="name"
        />

        Todo Name: <form:input type="text"
                               path="todoName"
                               required="required"
    /> <form:errors path="todoName" cssClass="text-warning"/>

        Todo Description: <form:input type="text"
                                      path="description"
                                      required="required"
                                      cssClass="form-control-sm"
    /> <form:errors path="description" cssClass="text-warning"/>

        Todo Target Date: <form:input type="date"
                                      path="targetDate"
                                      required="required"
    /> <form:errors path="targetDate" cssClass="text-warning"/>

        Todo finished: <form:input
                                type="hidden"
                                path="done"
                                cssClass="form-check-label"
    />

        <button type="submit" class="btn btn-outline-dark">Submit</button>
    </form:form>
</div>

<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.3/jquery.min.js"></script>
</body>
</html>