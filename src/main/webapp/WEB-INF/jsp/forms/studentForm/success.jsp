<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Spring MVC form submission</title>
</head>
<body>
Dear ${form.name}, <br/>
Your mail is ${form.email}<br/>
You chose the courses below:
<br/>
<c:forEach var="course" items="${form.courses}">
    <c:out value="${course}"/>
</c:forEach>
<br/>

Your tutor will be : ${form.tutor}<br/>
Your hidden message is : ${form.hiddenMessage}

</body>
</html>