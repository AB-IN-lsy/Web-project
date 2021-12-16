<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<% String path = request.getContextPath(); %>

<!--
初次开始策划第二界面的布局和属性，设置了nav横导航栏的current，设置了nav竖导航栏的none 2021/12/5

-->
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>科研研究</title>
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
        <%@include file="/WEB-INF/jsp/header.jsp" %>
    </div>
    <div id="nav">
        <%@include file="/WEB-INF/jsp_labnews/nav.jsp" %>
    </div>
    <div id="content">
        <section class="BaseMark PartBanner">
            <div class="bread"><br/>您所在的位置&nbsp;&nbsp;&nbsp;<span><a href=".">首页</a> >
        科研研究</span></div>
            <div class="title">
                <p id="one">科研研究</p>
                <hr/>
            </div>
            <ul>
                <jsp:useBean id="article_laboratory" scope="request" type="java.util.List"/>
                <c:forEach items="${article_laboratory}" var="al" varStatus="i">
                    <li>
                        <div class="textbox">
                            <div class="textbox-title">

                                <div class="textbox-label"><a href="getlabnews?alid=${al.alId }">
                                    [标题：${al.alLabel} ]
                                </a>
                                    [发布日期:<fmt:formatDate
                                            pattern="yyyy-MM-dd"
                                            value="${al.insertTime}"/> ]
                                </div>
                            </div>
                            <div class="textbox-content">${al.alContent }</div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </section>
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