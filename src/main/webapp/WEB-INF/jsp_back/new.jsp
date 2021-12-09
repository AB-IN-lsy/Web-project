<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
    <title>New</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="<%=path%>/css/web.css" rel="stylesheet" type="text/css">
</head>
<body>
<form name="myform" method="post" action="save">
    <div id="wrapper">

        <div id="header">

            <div id="logo"><img src="resources/images/logo.gif"/></div>
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

                <div class="textbox">
                    <div class="textbox-title">
                        <h4>签名留言</h4>
                    </div>
                    <div class="textbox-content">
                        <li>昵称:
                            <input name="author" type="text" id="yhm" value="admin" disabled></li>
                        <li>标题:
                            <input name="label" type="text" id="label"></li>

                        <li>邮箱:
                            <input name="email" type="text" id="email"></li>
                        <li>内容:
                            <textarea name="content" cols="70" rows="20"></textarea></li>
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
</html>
