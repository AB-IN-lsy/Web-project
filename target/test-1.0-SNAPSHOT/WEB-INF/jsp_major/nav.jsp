<!--
* @Author: NEFU AB-IN
* @Date: 2021-11-17 20:23:29
* @FilePath: \test\src\main\webapp\WEB-INF\jsp\nav.jsp
* @LastEditTime: 2021-11-23 22:12:56
-->
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>nav</title>
</head>
<!--
此部分是nav，即banner左边的导航栏
版本：制作了多个小图标 2021/11/23
    css样式圆圈拓展 2021/11/23
    quick menu的sub menu写好 2021/11/23
    写好了每个section的JavaScript: scroll() ps:因为偷懒所以没写第二界面 2021/11/23
    加入了数据库的更新 2021/11/24
    加入了从数据库中利用主码进行的查询，并打开详情页 2021/11/24
    更改了横导航栏的所有属性，将所有二级属性全部加入进去了，并加入了链接，减少了冗余的链接 2021/12/5
-->
<nav>
    <div class="navBase">
        <div class="quickMenuBase" data-type="1">
            <div class="quickMenu01"><a href="index" target="_self"></a> 走&nbsp;进&nbsp;计 科</div>
            <div class="quickMenu02 animated"></div>
            <div class="quickMenus">
                <ul class="firstUl">
                    <li class="first">
                        <a class="firstA" href="javascript:" target="_self">
                            <em>专业咨询</em><i class="style01"></i><span></span></a>
                        <div class="QMSub QMSubMenus">
                            <ul>
                                <li><a href="javascript:" title="">本科生教育</a></li>
                                <li><a href="javascript:" title="">研究生教育</a></li>
                                <li><a href="javascript:" title="">国际学生教育</a></li>
                                <li><a href="javascript:" title="">学生职业发展</a></li>
                                <li><a href="javascript:" title="">继续教育</a></li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    </li>
                    <li class="first"><a class="firstA" href="javascript:"><em>杰出校友</em><i class="style04"></i><span></span></a>
                        <div class="QMSub QMSubList">
                            <div class="IndexWords">
                                <h5>按姓名首字母查找</h5>
                                <ul>
                                    <li>A</li>
                                    <li>B</li>
                                    <li>C</li>
                                    <li>D</li>
                                    <li>E</li>
                                    <li>F</li>
                                    <li>G</li>
                                    <li>H</li>
                                    <li>I</li>
                                    <li>J</li>
                                    <li>K</li>
                                    <li>L</li>
                                    <li>M</li>
                                    <li>N</li>
                                    <li>O</li>
                                    <li>P</li>
                                    <li>Q</li>
                                    <li>R</li>
                                    <li>S</li>
                                    <li>T</li>
                                    <li>U</li>
                                    <li>V</li>
                                    <li>W</li>
                                    <li>X</li>
                                    <li>Y</li>
                                    <li>Z</li>
                                </ul>
                            </div>
                            <div class="clear"></div>
                            <div class="DList"></div>
                        </div>
                    </li>
                    <li class="first">
                        <a class="firstA" href="javascript:" target="_self"><em>人才招聘</em><i class="style02"></i><span></span></a>
                        <div class="QMSub QMSubMenus">
                            <ul>
                                <li><a href="javascript:">招聘计划</a></li>
                                <li><a href="javascript:">招聘信息</a></li>
                                <li><a href="javascript:">我要应聘</a></li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    </li>
                    <li class="first last">
                        <a class="firstA" href="javascript:scroll(0,1000)" target="_self">
                            <em>教师团队</em><i class=" style08"></i><span></span></a>
                    </li>
                    <li class="first last">
                        <a class="firstA" href="javascript:scroll(0,1450)">
                            <em>计科专业</em><i class="style09"></i><span></span></a>
                    </li>
                    <li class="first last">
                        <a class="firstA" href="javascript:scroll(0,1845)">
                            <em>科研新闻</em><i class="style10"></i><span></span></a>
                    </li>
                    <li class="first last">
                        <a class="firstA" href="javascript:scroll(0,2200)">
                            <em>联系我们</em><i class="style07"></i><span></span></a>
                    </li>
                </ul>
            </div>
        </div>


        <div class="nav Inav">
            <ul>
                <li class="PMenu"><a class="PAMenu" href="index" title="计科首页">计科首页</a></li>
                <li class="PMenu"><img class="animated" height="8" src="https://oss.ab-in.cn/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="https://aulin.nefu.edu.cn/" id="Nav_AMenu0" title="学院指南">学院指南</a>
                    <div class="navboxBase">
                        <div class="navboxBg">
                            <div class="navbox BaseMark">
                                <div class="navSub2 nav_Menu01">
                                    <div class="BottomHidden"></div>
                                    <dl>
                                        <dt>奥林学院</dt>
                                        <dd class="pic"><img height="77" src="https://oss.ab-in.cn/images/aulin.png" width="126">
                                        </dd>
                                        <dd class="text"><p>东北林业大学奥林学院作为一个非独立法人的中外合作办学机构，于2019 年 4 月 15
                                            日获教育部批准，同意设立。奥林学院隶属于东北林业大学（简称“东林”），是兼具有中外合作办学性质的一个教学、科研单位，办学地点设在东林校区。</p>
                                            <p> 地址： 东北林业大学 </p></dd>
                                    </dl>
                                </div>
                                <div class="navSub3 nav_Route">
                                    <dl>
                                        <dt>乘车路线</dt>
                                        <dd><em>公交路线</em>
                                            <p>哈尔滨站：在哈尔滨站出站口右侧沪士大厦后身乘338路公交车到东北林业大学站下车，往回走100米，到达学校正门。
                                                哈尔滨西站：在哈西客站东广场乘120路公交车到科大小区站下车，前行100米，到达学校文昌门。
                                                哈尔滨东站：在哈尔滨东站乘30路公交车到乐松广场站下车，往回走400米，到达学校正门。
                                                哈尔滨太平国际机场：乘机场巴士2号线到乐松广场站下车，往回走300米，到达学校正门。</p>
                                        </dd>
                                        <dd><em>地铁路线</em>
                                            <p>1, 2号线</p></dd>
                                    </dl>
                                    <a href="javascript:">电子地图</a>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="PMenu"><img class="animated" height="8" src="https://oss.ab-in.cn/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="https://www.nefu.edu.cn/" id="Nav_AMenu1" title="学校概况">学校概况</a>
                    <div class="navboxBase">
                        <div class="navboxBg">
                            <div class="navbox BaseMark">
                                <div class="navMenus">
                                    <ul>
                                        <li class="first"><a href="javascript:" title="">校长致辞<span>进入</span></a></li>
                                        <li><a href="javascript:" title="">学校沿革<span>进入</span></a></li>
                                        <li><a href="javascript:" title="">历任领导<span>进入</span></a></li>
                                        <li><a href="javascript:" title="">现任领导<span>进入</span></a></li>
                                        <li><a href="javascript:" title="">组织机构<span>进入</span></a></li>
                                        <li><a href="javascript:" title="">统计资料<span>进入</span></a></li>
                                    </ul>
                                </div>
                                <div class="navSub6"><img height="92" src="https://oss.ab-in.cn/images/aulin.png" width="92"/>
                                    <ul>
                                        <li><span>2019年</span><em>正式成立</em></li>
                                    </ul>
                                    <a class="Amore" href="javascript:">了解详情</a>
                                </div>
                                <div class="navSub3 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>东北林业大学校长致辞</dt>
                                        <dd>
                                            东北林业大学69载的孜孜奋进，留给东林人的是“学参天地，德合自然”的校训传统和以“团结拼搏、自我激励、发挥优势、争创一流”为核心的东林精神。自建校以来，学校已向国家输送各类毕业生17万余人，遍及华夏、绿满天涯，在经济社会发展和生态文明建设中发挥了重要作用。
                                        </dd>
                                        <dd>
                                            奥林学院是东林与奥大创新合作的结晶，同学们在奥林学院能够体验中外不同文化，拓展国际视野，感受先进育人理念和培养创新合作能力。追梦东林，逐梦奥林，奥林学院将成为你迈向成功的新起点！
                                        </dd>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>

                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="PMenu"><img class="animated" height="8" src="https://oss.ab-in.cn/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="labnews" id="Nav_AMenu2" title="科学研究">科学研究</a>
                    <div class="navboxBase">
                        <div class="navboxBg">
                            <div class="navbox BaseMark">
                                <div class="navMenus">
                                    <ul>
                                        <li class="first"><a href="labnews" title="">科研论坛</a></li>
                                        <li><a href="lab" title=" ">实验室</a></li>
                                    </ul>
                                </div>
                                <div class="navSub2 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>科学论坛</dt>
                                        <dd class="pic"><img alt="" height="48" src="https://oss.ab-in.cn/images/ico_049.jpg"
                                                             width="48"/>
                                            <c:forEach items="${article_laboratory}" var="al" varStatus="i">
                                        <dd><em><a href="getlabnews?alid=${al.alId }">${al.alLabel}</a></em></dd>
                                        <c:if test="${i.count == 1}">
                                            <dd>${al.alContent}</dd>
                                        </c:if>
                                        </c:forEach>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="navSub3 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>实验室</dt>
                                        <dd class="pic"><img alt="" height="48" src="https://oss.ab-in.cn/images/ico_048.jpg"
                                                             width="48"/>
                                            <c:forEach items="${laboratories}" var="l" varStatus="i">
                                        <dd><em><a class="animated" href="getlab?lid=${l.lId}">${l.lName}</a></em>
                                        <dd>
                                            <span class="animated">${l.lLabel}</span>
                                            </c:forEach>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="PMenu current"><img class="animated" height="8" src="https://oss.ab-in.cn/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="major" id="Nav_AMenu3" title="教育教学">教育教学</a>
                    <div class="navboxBase">
                        <div class="navboxBg">
                            <div class="navbox BaseMark">
                                <div class="navMenus">
                                    <ul>
                                        <li class="first"><a href="major">专业预览</a></li>
                                        <li><a href="javascript:">研究生教育</a></li>
                                        <li><a href="javascript:">本科生教育</a></li>
                                        <li><a href="javascript:">留学生教育</a></li>
                                        <li><a href="javascript:">继续教育</a></li>
                                        <li><a href="javascript:">海外学习</a></li>
                                    </ul>
                                </div>
                                <div class="navSub2 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>专业预览</dt>
                                        <dd class="pic"><img alt="专业预览" height="48" src="https://oss.ab-in.cn/images/ico_046.jpg"
                                                             width="48"/></dd>
                                        <c:forEach items="${majors}" var="m" varStatus="i">
                                            <c:if test="${i.count <= 5}">
                                                <dd><em><a class="office" href="getmajor?mid=${m.mId}"
                                                           title="${m.mName}" target="_blank">${m.mName}</a></em></dd>
                                                <dd><p>${m.mLabel}</p></dd>
                                            </c:if>
                                        </c:forEach>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="navSub3 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>教育帮扶</dt>
                                        <dd class="pic"><img alt="本科生教育" height="48" src="https://oss.ab-in.cn/images/ico_048.jpg"
                                                             width="48"/></dd>
                                        <dd><em>2019年</em><a href="javascript:" title="”">开启互帮互助活动，努力做到共同学习，共同进步</a></dd>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="PMenu"><img class="animated" height="8" src="https://oss.ab-in.cn/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="teacher" id="Nav_AMenu4" title="学校团队">学校团队</a>
                    <div class="navboxBase">
                        <div class="navboxBg">
                            <div class="navbox BaseMark">
                                <div class="navMenus">
                                    <ul>
                                        <li class="first"><a href="teacher" title="杰出教师">杰出教师</a></li>
                                        <li class="first"><a href="javascript:" title="杰出人才">杰出人才</a></li>
                                    </ul>
                                </div>
                                <div class="navSub2 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>杰出教师</dt>
                                        <dd class="pic"><img alt="" height="48" src="https://oss.ab-in.cn/images/ico_049.jpg"
                                                             width="48"/>
                                            <c:forEach items="${teachers}" var="t" varStatus="i">
                                            <c:if test="${i.count <= 4}">
                                        <dd><em><a class="name" href="getteacher?tid=${t.tId}" target="_blank"
                                                   title="${t.tName}">${t.tName}</a></em>
                                        <dd>
                                            <p>${t.tUniversity} ${t.tTitle}</p>
                                            </c:if>
                                            </c:forEach>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="navSub3 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>杰出人才</dt>
                                        <dd class="pic"><img alt="" height="48" src="https://oss.ab-in.cn/images/ico_050.jpg"
                                                             width="48"/>
                                        </dd>
                                        <dd><em><a href="https://www.ab-in.cn">刘思远</a></em></dd>
                                        <span>Powered by NEFU AB-IN</span>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="PMenu"><img class="animated" height="8" src="https://oss.ab-in.cn/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="news" id="Nav_AMenu5" title="新闻动态">新闻动态</a>
                    <div class="navboxBase">
                        <div class="navboxBg">
                            <div class="navbox BaseMark">
                                <div class="navMenus">
                                    <ul>
                                        <li class="first"><a href="news" title="">头条新闻<span>进入</span></a></li>
                                        <li><a href="labnews" title="">科研新闻<span>进入</span></a></li>
                                    </ul>
                                </div>
                                <div class="navSub2 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>头条新闻</dt>
                                        <dd class="pic"><img alt="" height="48" src="https://oss.ab-in.cn/images/ico_046.jpg"
                                                             width="48"/>
                                        </dd>
                                        <c:forEach items="${news}" var="n" varStatus="i">
                                            <dd><em><fmt:formatDate
                                                    pattern="yyyy-MM-dd"
                                                    value="${n.insertTime}"/></em>
                                                <a href="getnews?nid=${n.nId }">${n.nLabel}</a></dd>
                                        </c:forEach>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="navSub3 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>科研新闻</dt>
                                        <dd class="pic"><img alt="" height="48" src="https://oss.ab-in.cn/images/ico_048.jpg"
                                                             width="48"/>
                                        </dd>
                                        <c:forEach items="${article_laboratory}" var="al" varStatus="i">
                                            <c:if test="${i.count == 1}">
                                                <dd><em><a href="getlabnews?alid=${al.alId }">${al.alLabel}</a></em></dd>
                                                <span>${al.alContent}</span>
                                            </c:if>
                                        </c:forEach>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="PMenu">
                    <img class="animated" height="8" src="https://oss.ab-in.cn/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="lab" id="Nav_AMenu7" title="新闻动态">实验室览</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
</html>