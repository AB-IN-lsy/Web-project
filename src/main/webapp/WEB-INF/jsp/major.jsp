<!--
* @Author: NEFU AB-IN
* @Date: 2021-11-17 20:23:29
* @FilePath: \test\src\main\webapp\WEB-INF\jsp\major.jsp
* @LastEditTime: 2021-11-20 21:40:31
-->

<!--
此部分是major，即用于展示专业的必修课
版本：目前还未加入数据库的更新 2021-11-19
加入了数据库更新 2021-11-21
-->

<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>major</title>
</head>

<section class="officesBase BaseMark">
    <div class="toolsBase">
        <div class="title">
            <em>计科专业</em> <span>Required Course</span>
        </div>
        <div class="tools">
            <a class="ASwitch" href="javascript:;" id="OSearchSwitch">快速查找</a>
            <a class="Amore" href="major" target="_blank">更多 ></a>
            <a class="Aprev" href="javascript:;"></a>
            <a class="Anext" href="javascript:;"></a>
        </div>
        <div class="clear"></div>
    </div>
    <div class="contents">
        <ul data-num="0">
            <c:forEach items="${majors}" var="m" varStatus="i">
                <li>
                    <i class="ico01"></i>
                    <div class="img animated">
                        <a href="getmajor?mid=${m.mId}" target="_blank" title="${m.mName}"><img
                                alt="${m.mName}"
                                height="80"
                                src="https://oss.ab-in.cn/images/${m.mPic}"
                                width="80"
                        /></a>
                    </div>
                    <a class="office" href="getmajor?mid=${m.mId}" title="${m.mName}" target="_blank">${m.mName}</a>
                    <p>${m.mLabel}
                    </p>
                    <a class="btn more" href="getmajor?mid=${m.mId}" title="${m.mName}" target="_blank">查看详细</a>
                    <a class="btn doctor" href="teacher" title="${m.mName}讲师" target="_blank">知名导师</a>
                </li>
            </c:forEach>
        </ul>
        <div class="hackR"></div>
        <div class="hackL"></div>
    </div>
    <div class="hiddenLineR"></div>
    <div class="hiddenLineL"></div>
    <div class="OFastSearch">
        <div class="OFTitle">
            <label>快速查找</label>
            <button class="animated">返回</button>
        </div>
        <div class="OFContent">
            <div class="OListBase"></div>
        </div>
    </div>
</section>
</html>
