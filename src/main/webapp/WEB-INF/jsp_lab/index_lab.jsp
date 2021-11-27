<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>实验室</title>
</head>

<body>
<ul>
    <c:forEach items="${laboratories}" var="l" varStatus="i">
        <li><a href="getlab?lid=${l.lId}" title="">
            <img
                    class="second animated"
                    height="32"
                    src="resources/images/${l.lPic}b.png"
                    width="32"
            />
            <em class="animated">${l.lName}</em>
            <span class="animated">${l.lLabel}</span>
            <b class="animated">更多</b>
        </a></li>
    </c:forEach>
</ul>
</body>
</html>