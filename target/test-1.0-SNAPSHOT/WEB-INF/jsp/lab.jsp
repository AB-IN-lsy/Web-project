<!--
* @Author: NEFU AB-IN
* @Date: 2021-11-17 20:23:29
* @FilePath: \test\src\main\webapp\WEB-INF\jsp\lab.jsp
* @LastEditTime: 2021-11-20 21:40:47
-->

<!--
此部分是lab，即用于展示实验室的基本信息
版本：目前还未加入数据库的更新 2021-11-19
    已加入数据库的更新 2021-11-21
-->

<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>lab</title>
</head>

<section class="othersBase BaseMark">
    <div class="left">
        <div class="img">
            <ul class="Anim">
                <li>
                    <img
                            height="185"
                            src="resources/images/pic1.jpg"
                            width="290"
                    />
                </li>
                <li>
                    <img
                            height="185"
                            src="resources/images/pic2.jpg"
                            width="290"
                    />
                </li>
                <li>
                    <img
                            height="185"
                            src="resources/images/pic3.jpg"
                            width="290"
                    />
                </li>
            </ul>

            <ul class="index">
                <li class="animated"></li>
                <li class="animated"></li>
                <li class="animated"></li>
            </ul>
        </div>
        <div class="content">
            <h3>实验室团队成果</h3>
            <p>培养适应国家建设发展需要，德、智、体全面发展</p>
            <c:forEach items="${article_laboratory}" var="al" varStatus="i">
            <label>${al.alLabel}</label>
            </c:forEach>
            <a href="#" target="_blank" title="">更多</a>
        </div>
        <div class="clear"></div>
    </div>
    <div class="right">
        <c:forEach items="${laboratories}" var="l" varStatus="i">
            <a href="#" title="">
                <img
                        height="32"
                        src="resources/images/${l.lPic}a.png"
                        width="32"
                />
                <img
                        class="second animated"
                        height="32"
                        src="resources/images/${l.lPic}b.png"
                        width="32"
                />
                <em class="animated">${l.lName}</em>
                <span class="animated">${l.lLabel}</span>
                <b class="animated">更多</b>
            </a>
        </c:forEach>
    </div>
</section>
</html>
