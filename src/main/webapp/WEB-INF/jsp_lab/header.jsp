<!--
* @Author: NEFU AB-IN
* @Date: 2021-11-17 20:23:29
* @FilePath: \test\src\main\webapp\WEB-INF\jsp\header.jsp
* @LastEditTime: 2021-11-20 21:42:09
-->
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>

<!--
此部分是header，即导航栏
版本：加入开场动画
-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>header</title>
</head>

<header>
    <div class="topHidden"></div>
    <div class="toolBase">
        <div class="BaseMark">
            <ul>
                <li class="first"><a href="#">奥林地图</a></li>
                <li><a href="#">奥林信箱</a></li>
                <li><a href="#">奥林OA</a></li>
                <li><a href="#">奥林新闻</a></li>
                <li><a href="#">奥林论坛</a></li>
                &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
                <a class="loginIn" href="login" target="_self">登陆后台</a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%--                <a class="loginUp" href="注册.html" target="_self">注册</a>--%>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </ul>
        </div>
    </div>
    <div class="BaseMark logoBase">
        <a href="index"><img class="load" height="104" src="resources/images/logo.png" width="151"/></a>
        <div class="searchBase">
            <div class="itemBase">
                <div class="divType">校内搜索</div>
                <ul>
                    <li data-id="1">校内搜索</li>
                    <li data-id="2">名师校友</li>
                    <li data-id="3">新闻动态</li>
                </ul>
            </div>
            <form action="#" method="get">
                <input id="Type" name="Type" type="hidden" value="1"/>
                <input id="SearchWords" maxlength="28" name="SearchWords" placeholder="请输入您要查找内容的关键字" type="text"
                       value=""/>
                <input class="boxsub animated" type="submit" value="搜索"/>
            </form>
        </div>
    </div>
</header>
</html>
