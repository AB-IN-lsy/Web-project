<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<% String path = request.getContextPath(); %>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>实验室</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/index.css"/>
    <link
            rel="stylesheet"
            type="text/css"
            href="<%=path%>/css/index1.css"
    />
    <link
            rel="stylesheet"
            type="text/css"
            href="<%=path%>/css/index2.css"
    />
    <link
            rel="stylesheet"
            type="text/css"
            href="<%=path%>/css/index3.css"
    />
    <script src="<%=path%>/js/jq.js" type="text/javascript"></script>
    <script src="<%=path%>/js/index.js" type="text/javascript"></script>
    <script src="<%=path%>/js/gif.js" type="text/javascript"></script>
</head>

<body>
<div class="container">
    <div id="header">
        <%@include file="/WEB-INF/jsp_lab/header.jsp" %>
    </div>
    <div id="nav">
        <%@include file="/WEB-INF/jsp_lab/nav.jsp" %>
    </div>
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
    <div id="footer">
        <%@include file="/WEB-INF/jsp/footer.jsp" %>
    </div>
</div>
</body>
</html>