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
    <h1>test add-todo</h1>

    <form method="post">
        <label for="description" class="form-label">Description:</label>
        <input type="text" name="description" id="description" class="form-control-sm">

        <label for="targetDate" class="form-label">Finished by:</label>
        <input type="date" name="targetDate" id="targetDate" class="form-control-sm">

        <label for="isDone" class="form-label">Done?</label>
        <select class="form-select" type="boolean" name="done" id="isDone">
            <option>true</option>
            <option>false</option>
        </select>

        <button type="submit" class="btn btn-outline-dark">Submit</button>
    </form>
</div>

<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.3/jquery.min.js"></script>
</body>
</html>