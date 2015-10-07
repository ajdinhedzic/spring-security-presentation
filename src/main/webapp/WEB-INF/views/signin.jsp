<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sign In!</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
      <h2><c:out value="${message}"/></h2>
        <form method="POST">
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="username" class="control-label">User Name:</label>
                    <input type="text"  class="form-control" name="username"/>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <label for="password" class="control-label">Password:</label>
                    <input type="password" class="form-control" name="password"/>
                </div>
            <div>
            <button type="submit" value="submit" class="btn btn-default">Submit</button>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
