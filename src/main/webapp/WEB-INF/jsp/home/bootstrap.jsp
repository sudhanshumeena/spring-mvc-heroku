<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-1.11.2.min.js" />"></script>
    <script src="<c:url value="/resources/js/angular.min.js" />"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <fieldset>
                <legend>Bootstrap Form With Spring Mvc Example</legend>
                <form class="form-horizontal" method="post" action='employee/add.htm' name="employeeForm"
                      id="employeeForm">
                    <div class="control-group">
                        <label class="control-label">First Name</label>

                        <div class="controls">
                            <input type="text" name="firstName" id="firstName" title="First Name" value="">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Last Name</label>

                        <div class="controls">
                            <input type="text" name="lastName" id="lastName" title="Last Name" value="">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Email</label>

                        <div class="controls">
                            <input type="text" name="email" id="email" title="Email" value="">
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-success">Submit</button>
                        <button type="button" class="btn">Cancel</button>
                    </div>
                </form>
            </fieldset>
        </div>
    </div>
</div>
</body>
</html>