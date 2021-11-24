<!--
* @Author: NEFU AB-IN
* @Date: 2021-11-17 20:23:29
* @FilePath: \test\src\main\webapp\WEB-INF\jsp\nav.jsp
* @LastEditTime: 2021-11-23 22:12:56
-->
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
-->
<nav>
    <div class="navBase">
        <div class="quickMenuBase" data-type="1">
            <div class="quickMenu01"><a href="#" target="_self"></a> 走&nbsp;进&nbsp;计 科</div>
            <div class="quickMenu02 animated"></div>
            <div class="quickMenus">
                <ul class="firstUl">
                    <li class="first">
                        <a class="firstA" href="#" target="_self">
                            <em>专业咨询</em><i class="style01"></i><span></span></a>
                        <div class="QMSub QMSubMenus">
                            <ul>
                                <li><a href="#" title="">本科生教育</a></li>
                                <li><a href="#" title="">研究生教育</a></li>
                                <li><a href="#" title="">国际学生教育</a></li>
                                <li><a href="#" title="">学生职业发展</a></li>
                                <li><a href="#" title="">继续教育</a></li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    </li>
                    <li class="first"><a class="firstA" href="#"><em>杰出校友</em><i class="style04"></i><span></span></a>
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
                        <a class="firstA" href="#" target="_self"><em>人才招聘</em><i class="style02"></i><span></span></a>
                        <div class="QMSub QMSubMenus">
                            <ul>
                                <li><a href="#">招聘计划</a></li>
                                <li><a href="#">招聘信息</a></li>
                                <li><a href="#">我要应聘</a></li>
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
                            <em>实验新闻</em><i class="style10"></i><span></span></a>
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
                <li class="PMenu"><a class="PAMenu" href="#" title="计科首页">计科首页</a></li>
                <li class="PMenu"><img class="animated" height="8" src="resources/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="#" id="Nav_AMenu0" title="学院指南">学院指南</a>
                    <div class="navboxBase">
                        <div class="navboxBg">
                            <div class="navbox BaseMark">
                                <div class="navSub2 nav_Menu01">
                                    <div class="BottomHidden"></div>
                                    <dl>
                                        <dt>奥林学院</dt>
                                        <dd class="pic"><img height="77" src="resources/images/aulin.png" width="126"></dd>
                                        <dd class="text"><p>东北林业大学奥林学院作为一个非独立法人的中外合作办学机构，于2019 年 4 月 15 日获教育部批准，同意设立。奥林学院隶属于东北林业大学（简称“东林”），是兼具有中外合作办学性质的一个教学、科研单位，办学地点设在东林校区。</p>
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
                                    <a href="#">电子地图</a>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="PMenu"><img class="animated" height="8" src="resources/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="#" id="Nav_AMenu1" title="学校概况">学校概况</a>
                    <div class="navboxBase">
                        <div class="navboxBg">
                            <div class="navbox BaseMark">
                                <div class="navMenus">
                                    <ul>
                                        <li class="first"><a href="#" title="">校长致辞<span>进入</span></a></li>
                                        <li><a href="#" title="">学校沿革<span>进入</span></a></li>
                                        <li><a href="#" title="">历任领导<span>进入</span></a></li>
                                        <li><a href="#" title="">现任领导<span>进入</span></a></li>
                                        <li><a href="#" title="">组织机构<span>进入</span></a></li>
                                        <li><a href="#" title="">统计资料<span>进入</span></a></li>
                                    </ul>
                                </div>
                                <div class="navSub6"><img height="92" src="resources/images/aulin.png" width="92"/>
                                    <ul>
                                        <li><span>2019年</span><em>正式成立</em></li>
                                    </ul>
                                    <a class="Amore" href="#">了解详情</a>
                                </div>
                                <div class="navSub3 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>东北林业大学校长致辞</dt>
                                        <dd>东北林业大学69载的孜孜奋进，留给东林人的是“学参天地，德合自然”的校训传统和以“团结拼搏、自我激励、发挥优势、争创一流”为核心的东林精神。自建校以来，学校已向国家输送各类毕业生17万余人，遍及华夏、绿满天涯，在经济社会发展和生态文明建设中发挥了重要作用。
                                        </dd>
                                        <dd>奥林学院是东林与奥大创新合作的结晶，同学们在奥林学院能够体验中外不同文化，拓展国际视野，感受先进育人理念和培养创新合作能力。追梦东林，逐梦奥林，奥林学院将成为你迈向成功的新起点！
                                        </dd>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>

                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="PMenu"><img class="animated" height="8" src="resources/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="#" id="Nav_AMenu2" title="科学研究">科学研究</a>
                    <div class="navboxBase">
                        <div class="navboxBg">
                            <div class="navbox BaseMark">
                                <div class="navMenus">
                                    <ul>
                                        <li class="first"><a href="#" title="">科研项目</a></li>
                                        <li><a href=" " title=" ">科研机构</a></li>
                                        <li><a href=" " title=" ">科研合作</a></li>
                                        <li><a href=" " title=" ">科研成果与知识产权</a></li>
                                        <li><a href=" " title=" ">学术交流</a></li>
                                    </ul>
                                </div>
                                <div class="navSub2 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>科学论坛</dt>
                                        <dd class="pic"><img alt="" height="48" src="resources/images/ico_049.jpg" width="48"/>
                                        </dd>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="navSub3 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>学术期刊</dt>
                                        <dd class="pic"><img alt="" height="48" src="resources/images/ico_048.jpg" width="48"/>

                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="PMenu"><img class="animated" height="8" src="resources/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="#" id="Nav_AMenu3" title="教育教学">教育教学</a>
                    <div class="navboxBase">
                        <div class="navboxBg">
                            <div class="navbox BaseMark">
                                <div class="navMenus">
                                    <ul>
                                        <li class="first"><a href="#">教育动态</a></li>
                                        <li><a href="#">研究生教育</a></li>
                                        <li><a href="#">本科生教育</a></li>
                                        <li><a href="#">留学生教育</a></li>
                                        <li><a href="#">继续教育</a></li>
                                        <li><a href="#">海外学习</a></li>
                                    </ul>
                                </div>
                                <div class="navSub2 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>教育动态</dt>
                                        <dd class="pic"><img alt="教育动态" height="48" src="resources/images/ico_046.jpg"
                                                             width="48"/></dd>
                                        <dd><em>2019年</em><a href="#" title="">奥林学院计算机科学与技术专业正式成立</a></dd>
                                        <dd><em>2020-至今</em><a href="#" title="">我们正在茁壮成长</a></dd>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="navSub3 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>教育帮扶</dt>
                                        <dd class="pic"><img alt="本科生教育" height="48" src="resources/images/ico_048.jpg"
                                                             width="48"/></dd>
                                        <dd><em>2019年</em><a href="#" title="”">开启互帮互助活动，努力做到共同学习，共同进步</a></dd>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="PMenu"><img class="animated" height="8" src="resources/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="#" id="Nav_AMenu4" title="学校团队">学校团队</a>
                    <div class="navboxBase">
                        <div class="navboxBg">
                            <div class="navbox BaseMark">
                                <div class="navMenus">
                                    <ul>
                                        <li class="first"><a href="#" title="科普文章">科普文章</a></li>
                                        <li><a href="#" title="专题讲座">专题讲座</a></li>
                                    </ul>
                                </div>
                                <div class="navSub2 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>专家讲座</dt>
                                        <dd class="pic"><img alt="" height="48" src="resources/images/ico_049.jpg" width="48"/>

                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="navSub3 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>杰出校友</dt>
                                        <dd class="pic"><img alt="" height="48" src="resources/images/ico_050.jpg" width="48"/>
                                        </dd>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="PMenu"><img class="animated" height="8" src="resources/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="#" id="Nav_AMenu5" title="新闻动态">新闻动态</a>
                    <div class="navboxBase">
                        <div class="navboxBg">
                            <div class="navbox BaseMark">
                                <div class="navMenus">
                                    <ul>
                                        <li class="first"><a href="" title="">头条新闻<span>进入</span></a></li>
                                        <li><a href="#" title="">实验新闻<span>进入</span></a></li>
                                    </ul>
                                </div>
                                <div class="navSub2 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>头条新闻</dt>
                                        <dd class="pic"><img alt="" height="48" src="resources/images/ico_046.jpg" width="48"/>
                                        </dd>
                                        <c:forEach items="${news}" var="n" varStatus="i">
                                            <dd><em>${n.currentDate}</em><a href="#">${n.nLabel}</a></dd>
                                        </c:forEach>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="navSub3 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>实验新闻</dt>
                                        <dd class="pic"><img alt="" height="48" src="resources/images/ico_048.jpg" width="48"/>
                                        </dd>
                                        <c:forEach items="${article_laboratory}" var="al" varStatus="i">
                                            <c:if test="${i.count == 1}">
                                            <dd><em>${al.alLabel}</em><a href="#">${al.alContent}</a></dd>
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
                <li class="PMenu"><a class="PAMenu" href="#" id="Nav_AMenu7" title="">校园生活</a></li>
                <li class="PMenu"><a class="PAMenu" href="#" id="Nav_AMenu8" title="">图书馆</a></li>
            </ul>
        </div>
    </div>
</nav>
</html>