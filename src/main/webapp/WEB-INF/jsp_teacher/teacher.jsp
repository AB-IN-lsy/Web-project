<jsp:useBean id="teacher" scope="request" type="com.entity.Teacher"/>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<% String path = request.getContextPath(); %>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>${teacher.tName }</title>
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
        <%@include file="/WEB-INF/jsp_teacher/nav.jsp" %>
    </div>
    <div id="content">
        <section class="BaseMark PartBanner">
            <div class="bread"><br/>您所在的位置&nbsp;&nbsp;&nbsp;<span><a href="index">首页</a> >
                <a href="teacher">学校团队</a> > ${teacher.tName }</span></div>
            <div class="title">
                <p id="two">${teacher.tName }</p>
                <hr/>
            </div>
            <div class="title03">
                <span>入职日期:<fmt:formatDate
                        pattern="yyyy-MM-dd"
                        value="${teacher.insertTime}"/> </span>
                &nbsp;&nbsp;&nbsp;
                <span>毕业大学:${teacher.tUniversity}</span>
                &nbsp;&nbsp;&nbsp;
                <span>学历:${teacher.tTitle}</span>
            </div>
            <div class="picture">
                <img
                        alt="${teacher.tName}" height="162"
                        src="https://oss.ab-in.cn/images/${teacher.tPic}"
                        title="${teacher.tName}"
                        width="120"/>
            </div>
        </section>
    </div>
    <div id="footer">
        <%@include file="/WEB-INF/jsp/footer.jsp" %>
    </div>
</div>
</body>
</html>