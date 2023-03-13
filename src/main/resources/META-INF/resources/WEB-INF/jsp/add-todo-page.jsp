<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="action" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <%@include file="common/header.jspf" %>
    <title>Add Chili</title>
</head>
<body>
<%@include file="common/navigation.jspf" %>
<div class="container">
    <h1 class="h1 mt-3">Add a new Chili <i class="fa-solid fa-pepper-hot"></i></h1>

    <%--@elvariable id="todo" type="Todo"--%>
    <form:form method="post" modelAttribute="todo">

        <div class="form-group">
            <div class="row g-1">
                <div class="col-auto mt-3">
                    <fieldset>
                        <form:label path="todoName" cssClass="col-form-label">Name</form:label>
                        <form:input type="text"
                                    path="todoName"
                                    required="required"
                                    cssClass="form-control"/>
                        <form:errors path="todoName" cssClass="text-warning"/>
                    </fieldset>
                </div>
                <div class="row g-1">
                    <div class="col-auto mt-3">
                        <fieldset>
                            <form:label path="description" cssClass="col-form-label">Description</form:label>
                            <form:input type="text"
                                        path="description"
                                        required="required"
                                        cssClass="form-control"/>
                            <form:errors path="description" cssClass="text-warning"/>
                        </fieldset>
                    </div>
                </div>
                <div class="row g-1">
                    <div class="col-auto mt-3">
                        <fieldset>
                            <form:label path="targetDate" cssClass="col-form-label">Target Date</form:label>
                            <form:input type="date"
                                        path="targetDate"
                                        required="required"
                                        cssClass="form-control"/>
                            <form:errors path="targetDate" cssClass="text-warning"/>
                        </fieldset>
                    </div>
                </div>
            </div>
            <div class="row g-1 mt-3">
                <div class="col-auto mt-3">
                    <button type="submit" class="btn btn-outline-dark">Submit</button>
                </div>
            </div>
        </div>
    </form:form>
</div>
<%@include file="common/footer.jspf" %>

<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.3/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/a96db4626a.js" crossorigin="anonymous"></script>
</body>
</html>