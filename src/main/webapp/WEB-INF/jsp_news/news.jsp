<jsp:useBean id="n" scope="request" type="com.entity.News"/>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<% String path = request.getContextPath(); %>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>${n.nLabel }</title>
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
        <%@include file="/WEB-INF/jsp_news/header.jsp" %>
    </div>
    <div id="nav">
        <%@include file="/WEB-INF/jsp_news/nav.jsp" %>
    </div>
    <div id="content">
        <section class="BaseMark PartBanner">
            <div class="bread"><br/>您所在的位置&nbsp;&nbsp;&nbsp;<span><a href="index">首页</a>>
                <a href="news">新闻动态</a> > ${n.nLabel }</span></div>
            <div class="title">
                <p id="two">${n.nLabel }</p>
                <hr/>
            </div>
            <div class="title03">
                <span>发布日期:<fmt:formatDate
                        pattern="yyyy-MM-dd"
                        value="${n.insertTime}"/> </span>
                &nbsp;&nbsp;&nbsp;
                <span>更新日期:<fmt:formatDate
                        pattern="yyyy-MM-dd"
                        value="${n.updateTime}"/> </span>
                &nbsp;&nbsp;&nbsp;
                <span>作者:${n.nAuthor}</span>
                &nbsp;&nbsp;&nbsp;
                <span>邮箱:${n.nEmail}</span>
            </div>
            <div class="content01">
                ${n.nContent }
            </div>
        </section>
    </div>
    <div id="footer">
        <%@include file="/WEB-INF/jsp/footer.jsp" %>
    </div>
</div>
</body>
</html>
