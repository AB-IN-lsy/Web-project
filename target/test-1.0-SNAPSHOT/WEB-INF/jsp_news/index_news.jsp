<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>最新动态</title>
</head>

<body>
<ul>
    <c:forEach items="${news}" var="n" varStatus="i">
        <li>
            <span>${n.currentDate}</span>
            <a href="getnews?nid=${n.nId }" target="_blank"
            >${n.nLabel}</a>
        </li>
    </c:forEach>
</ul>

</body>
</html>