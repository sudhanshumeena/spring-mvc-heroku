<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign up for new semester please!</title>
</head>
<body>
<h2>Sign up for new semester please!</h2>
<form:form method="POST" commandName="form">
    <table>
        <tr>
            <td>Enter your name:</td>
            <td><form:input path="name"/></td>
            <td><form:errors path="name" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td>Enter your email:</td>
            <td><form:input path="email"/></td>
            <td><form:errors path="email" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td>Enter your gender:</td>
            <td><form:radiobuttons path="gender" items="${genders}"/></td>
            <td><form:errors path="gender" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td>Enter a password:</td>
            <td><form:password path="password" showPassword="true"/></td>
            <td><form:errors path="password" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td>Confirm your password:</td>
            <td><form:password path="confirmPassword" showPassword="true"/></td>
            <td><form:errors path="confirmPassword" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td>Choose the courses you like:</td>
            <td><form:checkboxes path="courses" items="${courses}"/></td>
            <td><form:errors path="courses" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td>Please select your tutor:</td>
            <td>
                <form:select path="tutor">
                    <form:option value="" label="---"/>
                    <form:options items="${tutors}"/>
                </form:select>
            </td>
            <td><form:errors path="tutor" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td><form:hidden path="hiddenMessage"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Submit"/></td>
        </tr>
    </table>
</form:form>

</body>
</html>