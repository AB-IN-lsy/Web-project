<%--
2021/12/4 星期六
刚实习完，老师布置了自己完成update的工作，
肝了十分钟就出来了，不就是...嘛
本身累得够呛，但一想到今天实习的内容
正是鸽了很久的后端，所以还是马不停蹄的从八点一直肝到十二点
完成了增，删，改
查应该明天讲，或者明天讲登录，总之快完成了

2021/12/5 星期日
完成了查的工作
运用了like模糊查询，效果显著，DEBUG了好长时间
不过效果很好，后端结束！

ps:为了迎合老师的news库，将我的news库中增加了很多列，
重写了很多servlet，只要效果好，心里还是很满意的
pss:借鉴的老师代码应该不算抄袭吧。。。
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String path = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
    <title>Main</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="<%=path%>/css/web.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="wrapper">
    <div id="header">
        <div id="logo"></div>
        <div id="blog-header">
            <h1 class="blog-title"><a href="findall">后端文章编辑器</a></h1>
            <div class="blog-desc">Welcome</div>
        </div>
        <div id="menu">
            <ul>
                <li><a href="findall">文章首页</a></li>
                <li><a href="write">添加文章</a></li>
                <li><a href="index">返回首页</a></li>
            </ul>
        </div>
    </div>

    <div id="mainWrapper">
        <div id="content" class="content-wide">
            <form action="search" method="post">
                作者：<input type="text" name="author"/>
                邮件：<input type="text" name="email"/>
                内容：<input type="text" name="content"/>
                <a><input type="submit" value="查找"/></a>
            </form>
            <br><br>

            <c:forEach items="${news}" var="n">
                <div class="textbox">
                    <div class="textbox-title">

                        <div class="textbox-label">[标题：${n.nLabel} ][发布者:${n.nAuthor} ][发布日期:<fmt:formatDate
                                pattern="yyyy-MM-dd"
                                value="${n.insertTime}"/> ]</div>
                    </div>
                    <div class="textbox-content">${n.nContent }</div>

                    <div class="textbox-bottom">邮箱: ${n.nEmail} | <a href="delete?nid=${n.nId}">删除</a>|
                        <a href="findone?nid=${n.nId}">修改</a></div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div id="footer">
        <div id="innerFooter">Powered by AB-IN; Copyright &copy;</div>
    </div>

</div>
</body>
</html>
