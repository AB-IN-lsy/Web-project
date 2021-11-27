<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>教师团队</title>
</head>

<body>
<ul data-num="0">
    <c:forEach items="${teachers}" var="t" varStatus="i">
        <li><a class="img" href="getteacher?tid=${t.tId}" target="_blank" title="${t.tName}"><img
                alt="${t.tName}" height="162"
                src="resources/images/${t.tPic}"
                title="${t.tName}"
                width="120"/></a>
            <a class="name" href="getteacher?tid=${t.tId}" target="_blank" title="${t.tName}">${t.tName}</a>
            <a class="office" href="getteacher?tid=${t.tId}" target="_blank"
               title="${t.tUniversity}">${t.tUniversity}</a>
            <a class="post" href="getteacher?tid=${t.tId}" target="_blank" title="${t.tTitle}">${t.tTitle}</a>
            <a class="btn more" href="getteacher?tid=${t.tId}" target="_blank" title="详细资料">详细资料</a>
            <a class="btn date" href="teacher" target="_blank">更多</a></li>
    </c:forEach>
</ul>

</body>
</html>