<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Save Page</title>
</head>
<body>
<h2>Customer Save Page</h2>
<form:form method="POST" commandName="customer">
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
            <td>Please select your tutor:</td>
            <td>
                <form:select path="gender">
                    <form:option value="MALE" label="Select Gender"/>
                    <form:option value="FEMALE" label="Male"/>
                    <form:option value="" label="Female"/>
                </form:select>
            </td>
            <td><form:errors path="gender" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td>Birthday:</td>
            <td><form:input path="birthday" placeholder="MM/dd/yyyy"/></td>
            <td><form:errors path="birthday" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td>Phone:</td>
            <td><form:input path="phone"/></td>
            <td><form:errors path="phone" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td colspan="3"><input type="submit" value="Save Customer"/></td>
        </tr>
    </table>
</form:form>

</body>
</html>