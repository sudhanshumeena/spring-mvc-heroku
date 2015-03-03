<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign up for new semester please!</title>
</head>
<body>
<h2>Sign up for new semester please!</h2>
<form:form method="POST" commandName="newUser">
    <table>
        <tr>
            <td>Enter user name:</td>
            <td><form:input path="userName"/></td>
            <td><form:errors path="userName" cssStyle="color: crimson"/></td>
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
            <td>Enter your first name:</td>
            <td><form:input path="firstName"/></td>
            <td><form:errors path="firstName" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td>Enter your middle name:</td>
            <td><form:input path="middleName"/></td>
        </tr>
        <tr>
            <td>Enter your last name:</td>
            <td><form:input path="lastName"/></td>
            <td><form:errors path="lastName" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td>Enter your gender:</td>
            <td>
                <form:select path="gender">
                    <form:option value="" label="---"/>
                    <form:options items="${genderList}"/>
                </form:select>
            </td>
            <td><form:errors path="gender" cssStyle="color: crimson"/></td>
        </tr>

        <tr>
            <td>Enter your email:</td>
            <td><form:input path="email"/></td>
            <td><form:errors path="email" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td>Enter you 10 digit mobile no</td>
            <td><form:input path="mobileNo"/></td>
            <td><form:errors path="mobileNo" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td>Please select your Country:</td>
            <td>
                <form:select path="country">
                    <form:option value="" label="---"/>
                    <form:options items="${countryList}"/>
                </form:select>
            </td>
            <td><form:errors path="country" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td>Do you want to receive news letter</td>
            <td><form:radiobuttons path="receiveNewsletter" items="${newsletterList}"/></td>
            <td><form:errors path="receiveNewsletter" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td>Please select a java skill</td>
            <td>
                <form:select path="javaSkills">
                    <form:options items="${skillList}"/>
                </form:select>
            </td>
            <td><form:errors path="javaSkills" cssStyle="color: crimson"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="Submit"/></td>
        </tr>
    </table>
</form:form>

</body>
</html>