<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<% String path = request.getContextPath(); %>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>实验室览</title>
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
    <div id="content">
        <section class="BaseMark PartBanner">
            <div class="bread"><br/>您所在的位置&nbsp;&nbsp;&nbsp;<span><a href="index">首页</a>>
        实验室览</span></div>
            <div class="title">
                <p id="one">实验室览</p>
                <hr/>
            </div>
            <ul>
                <c:forEach items="${laboratories}" var="l" varStatus="i">
                    <li>
                        <div class="textbox">
                            <div class="textbox-title">

                                <div class="textbox-label"><a href="getlab?lid=${l.lId }">
                                    [实验室名：${l.lName} ]
                                </a>
                                    [成立日期:<fmt:formatDate
                                            pattern="yyyy-MM-dd"
                                            value="${l.insertTime}"/> ]
                                    [简介：${l.lLabel} ]
                                </div>
                            </div>
                            <div class="textbox-content">${l.lContent }</div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </section>
    </div>
    <div id="footer">
        <%@include file="/WEB-INF/jsp/footer.jsp" %>
    </div>
</div>
</body>
</html>