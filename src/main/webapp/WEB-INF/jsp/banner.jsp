<!--
* @Author: NEFU AB-IN
* @Date: 2021-11-17 20:23:29
* @FilePath: \test\src\main\webapp\WEB-INF\jsp\banner.jsp
* @LastEditTime: 2021-11-20 21:37:01
-->

<!--
此部分是banner，即用于图片的滑动，对接gif.js
版本: Expand: 可自定义加入多个图片 2021-11-22
     Method: 加入list item的同时，加下面的animated按钮，毕竟实现的方法就是每过一段时间就让animated新增状态为on，进而切换图片 2021-11-22
-->

<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>banner</title>
</head>

<section class="bannerBase BaseMark">
    <div class="Banners">
        <ul class="AnimUl">
            <li>
                <a href="javascript:" title=""
                ><img alt="" src="https://oss.ab-in.cn/images/pic1.jpg"
                /></a>
            </li>
            <li>
                <a href="javascript:" title=""
                ><img alt="" src="https://oss.ab-in.cn/images/pic2.jpg"
                /></a>
            </li>
            <li>
                <a href="javascript:" title=""
                ><img alt="" src="https://oss.ab-in.cn/images/pic3.jpg"
                /></a>
            </li>
            <li>
                <a href="javascript:" title=""
                ><img alt="" src="https://oss.ab-in.cn/images/pic4.png"
                /></a>
            </li>
        </ul>
        <ul class="ulMark">
            <li class="animated"></li>
            <li class="animated"></li>
            <li class="animated"></li>
            <li class="animated"></li>
        </ul>
        <div class="clear"></div>
    </div>
</section>
</html>
