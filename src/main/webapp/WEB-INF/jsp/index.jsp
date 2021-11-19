<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<% String path = request.getContextPath(); %>
<head>
    <meta charset="UTF-8">
    <title>Aulin CST</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/index1.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/index2.css"/>
    <script src="<%=path%>/js/jq.js" type="text/javascript"></script>
    <script src="<%=path%>/js/index.js" type="text/javascript"></script>
    <script src="<%=path%>/js/gif.js" type="text/javascript"></script>

</head>

<body>
<div class="container">
    <div id="header">
        <%@include file="/WEB-INF/jsp/header.jsp" %>
    </div>
    <div id="main">
        <div id="sidebar">
            <%@include file="/WEB-INF/jsp/sidebar1.jsp" %>
        </div>
        <div id="article">

        </div>
    </div>
    <div id = "teacher">
        <%@include file="/WEB-INF/jsp/teacher.jsp" %>
    </div>
    <div id="section1">
        <%@include file="/WEB-INF/jsp/section1.jsp" %>
    </div>
    <div id="section">
        <%@include file="/WEB-INF/jsp/section.jsp" %>
    </div>
    <div id="QR">
        <%@include file="/WEB-INF/jsp/QR.jsp" %>
    </div>
    <div id="footer">
        <%@include file="/WEB-INF/jsp/footer.jsp" %>
    </div>
</div>

</body>
</html>