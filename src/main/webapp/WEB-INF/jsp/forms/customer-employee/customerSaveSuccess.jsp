<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Saved Succesfully</title>
</head>
<body>
<h3>Customer Saved Successfully</h3>

<strong>Customer Name: ${customer.name}</strong><br/>
<strong>Customer Email: ${customer.email}</strong><br/>
<strong>Customer Age: ${customer.name}</strong><br/>
<strong>Customer Gender: ${customer.gender}</strong><br/>
<strong>Customer Birthday:<fmt:formatDate value="${customer.birthday}" type="date"/></strong><br>

</body>
</html>