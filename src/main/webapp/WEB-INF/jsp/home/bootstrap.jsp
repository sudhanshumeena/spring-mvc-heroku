<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="<c:url value="webjars/bootstrap/3.3.2/css/bootstrap.css" />" rel="stylesheet">
    <script src="<c:url value="webjars/jquery/2.1.3/jquery.min.js" />"></script>
    <script src="<c:url value="webjars/angularjs/1.3.11/angular.min.js" />"></script>

    <%--<link rel='stylesheet' href='webjars/bootstrap/3.3.2/css/bootstrap.min.css'>--%>
    <%--<script type='text/javascript' src='webjars/jquery/2.1.3/jquery.min.js'></script>--%>
    <%--<script type='text/javascript' src='webjars/angularjs/1.3.11/angular.min.js'></script>--%>

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