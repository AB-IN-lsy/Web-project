<!--
* @Author: NEFU AB-IN
* @Date: 2021-11-17 20:23:29
* @FilePath: \test\src\main\webapp\WEB-INF\jsp\news.jsp
* @LastEditTime: 2021-11-20 21:40:08
-->

<!--
此部分是news，即图片下面的新闻公告
ps：由于我是从下往上写的，所以命名它最小。。。
版本：目前还未加入数据库的更新
-->

<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>news</title>
</head>

<section class="NewsBase BaseMark">
    <div class="tools">
        <a href="#"
        ><img
                alt=""
                class="load"
                height="52"
                src="resources/images/ico_003.gif"
                width="52"
        />
            <em>专业医护平台</em></a
        ><a class="last" href="#">
        <img
                class="load"
                height="52"
                src="resources/images/ico_004.gif"
                width="52"
        />
        <em>专业查询平台</em></a
    >
        <a href="#">
            <img
                    class="load"
                    height="52"
                    src="resources/images/ico_001.gif"
                    width="52"
            />
            <em>专业智慧平台</em></a
        >
        <a href="#"
        ><img
                class="load"
                height="52"
                src="resources/images/ico_002.gif"
                width="52"
        />
            <em>专业数据平台</em></a
        >
    </div>
    <div class="noticeBase">
        <div class="notice notice01">
            <a class="more" href="#">更多</a>
            <div class="title">
                <em>最新动态</em><span>Latest Announcement</span>
            </div>
            <div class="first">
                <a href="#" id="ANoticeFirst"
                ><img
                        class="load"
                        height="76"
                        src="resources/images/pic4.png"
                        width="126"
                /></a>
                <div>
                        <span>2021-11-19</span
                        ><a href="#"
                >转发科研院“关于开展学习贯彻党的十九届六中全会精神主题征文的通知”</a
                >
                </div>
                <div class="clear"></div>
            </div>
            <ul>
                <li>
                    <span>2021-11-19</span>
                    <a href="#" target="_blank"
                    >转发科研院“关于组织申报2022年黑龙江省地方标准制修订项目的通知”</a
                    >
                </li>
                <li>
                    <span>2021-11-19</span>
                    <a href="#" target="_blank"
                    >转发研究生院“关于进一步加强实践教学安全管理工作的通知</a
                    >
                </li>
            </ul>
        </div>
        <div class="notice notice02">
            <a class="more" href="#">更多</a>
            <div class="title">
                <em>科研成果</em
                ><span> achievements in scientific research</span>
            </div>
            <div class="first">
                <a href="#" id="ANewsFirst">
                    <img
                            class="load"
                            height="76"
                            src="resources/images/pic4.png"
                            width="126"
                    /></a>
                <div><a href="#">发明一种新冠肺炎自动标注系统</a></div>
                <div class="clear"></div>
            </div>
            <ul>
                <li>
                    <a href="#">奥林学子在团体程序设计天梯赛中获佳绩</a>
                </li>
                <li><a href="#">新冠肺炎自动标注系统被推广应用</a></li>
                <li><a href="#">修订项目的通知</a></li>
            </ul>
        </div>
    </div>
    <div class="clear"></div>
</section>
</html>
