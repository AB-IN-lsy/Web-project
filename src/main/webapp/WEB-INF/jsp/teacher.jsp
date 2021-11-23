<!--
* @Author: NEFU AB-IN
* @Date: 2021-11-17 20:23:29
* @FilePath: \test\src\main\webapp\WEB-INF\jsp\teacher.jsp
* @LastEditTime: 2021-11-20 21:39:11
-->

<!--
此部分是teacher，即用于展示教师的风采
版本：目前还未加入数据库的更新 2021-11-17
    已加入数据库的更新 2021-11-22
-->

<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Teacher</title>
</head>

<section class="doctorsBase BaseMark">
    <div class="toolsBase">
        <div class="title"><em>教师团队</em><span>Teacher</span></div>
        <div class="tools"><a class="ASwitch" href="javascript:;" id="DSearchSwitch">快速查找</a>
            <form action="#" class="search" method="get">
                <input name="Type" type="hidden" value="2"/>
                <input autocomplete="off" class="animated" maxlength="28" name="SearchWords" placeholder="请输入查找的名字"
                       type="text" value=""/>
                <input class="btn" type="submit" value=""/></form>
            <a class="Amore" href="#">更多 ></a>
            <a class="Aprev" href="javascript:;"></a>
            <a class="Anext" href="javascript:;"></a>
        </div>
        <div class="clear"></div>
    </div>
    <div class="contents">
        <ul data-num="0">
            <c:forEach items="${teachers}" var="t" varStatus="i">
            <li><a class="img" href="#" target="_blank" title="姓名"><img alt="姓名" height="162"
                                                                        src="resources/images/${t.tPic}"
                                                                        title="姓名" width="120"/></a>
                <a class="name" href="#" target="_blank" title="姓名">${t.tName}</a>
                <a class="office" href="#" target="_blank" title="">${t.tUniversity}</a>
                <a class="post" href="#" target="_blank" title="姓名">${t.tTitle}</a>
                <a class="btn more" href="#" target="_blank" title="姓名">详细资料</a>
                <a class="btn date" href="#">更多</a></li>
            </c:forEach>
            <div class="hackR"></div>
            <div class="hackL"></div>
    </div>
    <div class="DFastSearch">
        <div class="DFTitle"><label>按姓名首字母查找</label>
            <button class="animated">关闭查找</button>
        </div>
        <div class="DFContent">
            <div class="DListBase"></div>
            <div class="IndexWords">
                <ul>
                    <li data-index="0">A</li>
                    <li class="other" data-index="1">B</li>
                    <li data-index="2">C</li>
                    <li class="other" data-index="3">D</li>
                    <li data-index="4">E</li>
                    <li class="other" data-index="5">F</li>
                    <li data-index="6">G</li>
                    <li class="other" data-index="7">H</li>
                    <li data-index="8">I</li>
                    <li class="other" data-index="9">J</li>
                    <li data-index="10">K</li>
                    <li class="other" data-index="11">L</li>
                    <li data-index="12">M</li>
                </ul>
                <ul>
                    <li class="other" data-index="13">N</li>
                    <li data-index="14">O</li>
                    <li class="other" data-index="15">P</li>
                    <li data-index="16">Q</li>
                    <li class="other" data-index="17">R</li>
                    <li data-index="18">S</li>
                    <li class="other" data-index="19">T</li>
                    <li data-index="20">U</li>
                    <li class="other" data-index="21">V</li>
                    <li data-index="22">W</li>
                    <li class="other" data-index="23">X</li>
                    <li data-index="24">Y</li>
                    <li class="other" data-index="25">Z</li>
                </ul>
            </div>
        </div>
    </div>
</section>
</html>