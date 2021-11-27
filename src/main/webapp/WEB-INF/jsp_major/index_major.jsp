<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>计科专业</title>
</head>

<body>
<ul data-num="0">
    <c:forEach items="${majors}" var="m" varStatus="i">
        <li>
            <i class="ico01"></i>
            <div class="img animated">
                <img
                        alt="${m.mName}"
                        height="80"
                        src="resources/images/${m.mPic}"
                        width="80"
                />
            </div>
            <a class="office" href="getmajor?mid=${m.mId}" title="${m.mName}" target="_blank">${m.mName}</a>
            <p>${m.mLabel}
            </p>
            <a class="btn more" href="getmajor?mid=${m.mId}" title="${m.mName}" target="_blank">查看详细</a>
            <a class="btn doctor" href="teacher" title="${m.mName}讲师" target="_blank">知名导师</a>
        </li>
    </c:forEach>
</ul>

</body>
</html>