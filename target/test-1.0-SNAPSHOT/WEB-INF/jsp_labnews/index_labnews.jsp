
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>科研新闻</title>
</head>

<body>
<ul>
    <c:forEach items="${article_laboratory}" var="al" varStatus="i">
        <li><a href="getlabnews?alid=${al.alId }">${al.alLabel}</a></li>
    </c:forEach>
</ul>

</body>
</html>