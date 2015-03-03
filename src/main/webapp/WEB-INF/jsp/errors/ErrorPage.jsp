<%@ page language="java" isErrorPage="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<h1>404 Page Not Found.</h1><br/>

<p><b>Error code:</b> ${pageContext.errorData.statusCode}</p>

<p><b>Request URI:</b> ${pageContext.request.scheme}://${header.host}${pageContext.errorData.requestURI}</p><br/>
<button onclick="history.back()">Back to Previous Page</button>
</body>
</html>