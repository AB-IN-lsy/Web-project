<jsp:useBean id="news" scope="request" type="com.entity.News"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html >
<html>
<head>
    <title>Update</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="<%=path%>/css/web.css" rel="stylesheet" type="text/css">
</head>
<body>
<form name="myform" method="post" action="update">
    <div id="wrapper">

        <div id="header">

            <div id="logo"><img src="https://oss.ab-in.cn/images/logo.gif"/></div>
            <div id="blog-header">
                <h1 class="blog-title"><a href="findall">后端文章编辑器</a></h1>
                <div class="blog-desc">Welcome</div>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="findall">文章首页</a></li>
                    <li><a href="write">添加文章</a></li>
                    <li><a href=".">返回首页</a></li>
                </ul>
            </div>

        </div>
        <div id="mainWrapper">
            <div id="content" class="content-wide">

                <div class="textbox">
                    <div class="textbox-title">
                        <h4>更新文章</h4>
                    </div>
                    <div class="textbox-content">
                        <ul>
                            <input name="nid" type="hidden" value="${news.nId}">
                            <li>作者:
                                <input name="author" type="text" id="author" value="${news.nAuthor}" readonly   ></li>
                            <li>标题:
                                <input name="title" type="text" id="title1" value="${news.nTitle}"></li>
                            <li>邮箱:
                                <input name="email" type="text" id="email" value="${news.nEmail}"></li>
                            <li>简介:
                                <div id="div2">
                                    <p>${news.nLabel}</p>
                                </div>
                            </li>
                            <textarea id="text2" name="label" cols="10" rows="20" hidden></textarea>
                            <li>内容:
                                <div id="div1">
                                    <p>${news.nContent}</p>
                                </div>
                            </li>
                            <textarea id="text1" name="content" cols="70" rows="20" hidden></textarea>
                        </ul>
                    </div>
                    <div class="textbox-bottom">
                        <a><input type="submit" name="regsubmit" value="提交" class="btn"></a>
                    </div>
                </div>

            </div>
        </div>
        <div id="footer">
            <div id="innerFooter">Powered by AB-IN; Copyright &copy;</div>
        </div>

    </div>
</form>
</body>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/wangeditor@latest/dist/wangEditor.min.js"></script>
<script type="text/javascript">
    const E = window.wangEditor
    const editor1 = new E('#div1')
    const $text1 = $('#text1')
    const editor2 = new E('#div2')
    const $text2 = $('#text2')
    editor1.config.onchange = function (html) {
        // 第二步，监控变化，同步更新到 textarea
        $text1.val(html)
    }
    editor2.config.onchange = function (html) {
        // 第二步，监控变化，同步更新到 textarea
        $text2.val(html)
    }
    editor1.create()
    editor2.create()
    $text1.val(editor1.txt.html())
    $text2.val(editor2.txt.html())
</script>
</html>
