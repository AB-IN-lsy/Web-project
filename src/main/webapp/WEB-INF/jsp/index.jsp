<!--
* @Author: NEFU AB-IN
* @Date: 2021-11-17 20:23:29
* @FilePath: \test\src\main\webapp\WEB-INF\jsp\index_news.jsp
* @LastEditTime: 2021-11-20 21:50:31
-->
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>

<!--
想说的话都放在这了，
一直想呈现一个很好的项目给老师，可无奈时间太短
我还投入了很多心血进去，但仍然有部分链接为空连接，仍然会有一些BUG
最基础的目标我都很认真的完成了，前端和后端已经基本完善
希望老师可以满意
（我发现我写项目时，时间过的比我打ACM还快）
我是 AB-IN 也是liusy
            落笔 2021/12/5

此部分是总的jsp，汇总所有的jsp文件
User manual:
1.请使用 360浏览器 或者 chrome打开 本网站！！！！！
（已知用edge打开会出现用鼠标滚轮滑动是导致突然的上下抖动）
2.有些导航栏的项目未设跳转
3.功能介绍以及实现的方法，都写在了每个文件的头，感兴趣可自行观看
4.由于本人前端技术尚不成熟，出现bug以及实现差，请多包涵！
Bug List:
1.解决了head中添加的css，js样式404
方法：加入绝对路径
不要放在WEB-INF中
2.解决了servlet为“/”无法访问js和css
方法：设置为“/index”
-->

<!DOCTYPE html>
<html lang="en">
<% String path = request.getContextPath(); %>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>CST</title>
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
        <%@include file="/WEB-INF/jsp/nav.jsp" %>
    </div>
    <div id="banner">
        <%@include file="/WEB-INF/jsp/banner.jsp" %>
    </div>
    <div id="news">
        <%@include file="/WEB-INF/jsp/news.jsp" %>
    </div>
    <div id="teacher">
        <%@include file="/WEB-INF/jsp/teacher.jsp" %>
    </div>
    <div id="major">
        <%@include file="/WEB-INF/jsp/major.jsp" %>
    </div>
    <div id="lab">
        <%@include file="/WEB-INF/jsp/lab.jsp" %>
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
