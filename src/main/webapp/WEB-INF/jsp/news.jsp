<!--
* @Author: NEFU AB-IN
* @Date: 2021-11-17 20:23:29
* @FilePath: \test\src\main\webapp\WEB-INF\jsp\news.jsp
* @LastEditTime: 2021-11-23 21:27:18
-->

<!--
此部分是news，即图片下面的新闻公告
版本：目前还未加入数据库的更新 2021-11-20
加入右栏数据库更新 2021-11-22
加入左栏数据库更新 2021-11-22
加入左栏数据库更新时间，学会用dateformat进行转换 2021-11-23
-->

<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>news</title>
</head>

<section class="NewsBase BaseMark">
    <div class="tools">
        <a ><img
                alt=""
                class="load"
                height="52"
                src="resources/images/ico_003.gif"
                width="52"
        />
            <em>专业医护平台</em></a
        ><a class="last">
        <img
                class="load"
                height="52"
                src="resources/images/ico_004.gif"
                width="52"
        />
        <em>专业查询平台</em></a
    >
        <a>
            <img
                    class="load"
                    height="52"
                    src="resources/images/ico_001.gif"
                    width="52"
            />
            <em>专业智慧平台</em></a
        >
        <a><img
                class="load"
                height="52"
                src="resources/images/ico_002.gif"
                width="52"
        />
            <em>专业数据平台</em>
        </a>
    </div>
    <div class="noticeBase">
        <div class="notice notice01">
            <a class="more" href="news" target="_blank">更多</a>
            <div class="title">
                <em>最新动态</em><span>Latest Announcement</span>
            </div>
            <div class="first">
                <c:forEach items="${news}" var="n" varStatus="i">
                    <c:if test="${i.count == 1}">
                        <a href="getnews?nid=${n.nId }" id="ANoticeFirst"
                        ><img
                                class="load"
                                height="76"
                                src="resources/images/pic1.jpg"
                                width="126"
                        /></a>
                        <div>
                            <span><fmt:formatDate
                                    pattern="yyyy-MM-dd"
                                    value="${n.insertTime}"/></span><a href="getnews?nid=${n.nId }" target="_blank"
                        >${n.nLabel}</a>
                        </div>
                    </c:if>
                </c:forEach>
                <div class="clear"></div>
            </div>
            <ul>
                <c:forEach items="${news}" var="n" varStatus="i">
                    <c:if test="${i.count > 1}">
                        <li>
                            <span><fmt:formatDate
                                    pattern="yyyy-MM-dd"
                                    value="${n.insertTime}"/></span>
                            <a href="getnews?nid=${n.nId }" target="_blank"
                            >${n.nLabel}</a>
                        </li>
                    </c:if>
                </c:forEach>
            </ul>
        </div>
        <div class="notice notice02">
            <a class="more" href="labnews" target="_blank">更多</a>
            <div class="title">
                <em>科研新闻</em><span> news in scientific research</span>
            </div>
            <div class="first">
                <c:forEach items="${article_laboratory}" var="al" varStatus="i">
                    <c:if test="${i.count == 2}">
                        <a href="getlabnews?alid=${al.alId }" id="ANewsFirst">
                            <img
                                    class="load"
                                    height="76"
                                    src="resources/images/pic4.png"
                                    width="126"
                            /></a>
                        <div><a href="getlabnews?alid=${al.alId }">${al.alLabel}</a></div>
                    </c:if>
                </c:forEach>
                <div class="clear"></div>
            </div>
            <ul>
                <c:forEach items="${article_laboratory}" var="al" varStatus="i">
                    <c:if test="${i.count != 2}">
                        <li><a href="getlabnews?alid=${al.alId }">${al.alLabel}</a></li>
                    </c:if>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="clear"></div>
</section>
</html>
