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
    找到图标，设计登录后台 2021/11/24
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
                <li class="first"><a href="https://aulin.nefu.edu.cn/">奥林地图</a></li>
                <li><a href="https://aulin.nefu.edu.cn/">奥林信箱</a></li>
                <li><a href="https://aulin.nefu.edu.cn/">奥林OA</a></li>
                <li><a href="https://aulin.nefu.edu.cn/">奥林新闻</a></li>
                <li><a href="https://aulin.nefu.edu.cn/">奥林论坛</a></li>
                &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
                <a class="loginIn" href="login" target="_self">登陆后台</a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a class="loginUp" href="https://github.com/AB-IN-lsy/Web-project/blob/master/README.md" target="_blank">开发日志</a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </ul>
        </div>
    </div>
    <div class="BaseMark logoBase flex">
        <div class="header-logo" title="东北林业大学计算机科学与技术专业">
            <a href="index" class="full-box-link"></a>
        </div>
        <div class="header-name" title="东北林业大学计算机科学与技术专业">
            <a href="index" class="full-box-link"></a>
        </div>
        <div class="searchBase">
            <form action="searchType" method="post">
                <div class="itemBase">
                    <div class="divType">科学研究</div>
                    <ul>
                        <li data-id="1">科学研究</li>
                        <li data-id="2">教育教学</li>
                        <li data-id="3">学校团队</li>
                        <li data-id="4">新闻动态</li>
                        <li data-id="5">实验室览</li>
                    </ul>
                </div>
                <input id="Type" name="Type" type="hidden" value="1"/>
                <input id="SearchWords" maxlength="28" name="SearchWords" placeholder="请输入您要查找内容的关键字" type="text"
                       value=""/>
                <input class="boxsub animated" type="submit" value="搜索"/>
            </form>
        </div>
    </div>
</header>
</html>
