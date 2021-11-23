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
                        <a class="firstA" href="javascript:scroll(0,800)" target="_self">
                            <em>教师团队</em><i class=" style08"></i><span></span></a>
                    </li>
                    <li class="first last">
                        <a class="firstA" href="javascript:scroll(0,1250)">
                            <em>计科专业</em><i class="style09"></i><span></span></a>
                    </li>
                    <li class="first last">
                        <a class="firstA" href="javascript:scroll(0,1645)">
                            <em>实验新闻</em><i class="style10"></i><span></span></a>
                    </li>
                    <li class="first last">
                        <a class="firstA" href="javascript:scroll(0,2000)">
                            <em>联系我们</em><i class="style07"></i><span></span></a>
                    </li>
                </ul>
            </div>
        </div>


        <div class="nav Inav">
            <ul>
                <li class="PMenu"><a class="PAMenu" href="#">奥林计科首页</a></li>
                <li class="PMenu"><img class="animated" height="8" src="resources/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="#" id="Nav_AMenu0" title="就诊指南">学院指南</a>
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
                    <a class="PAMenu" href="#" id="Nav_AMenu1" title="概况">学校概况</a>
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
                                        <dt>清华论坛</dt>
                                        <dd class="pic"><img alt="" height="48" src="resources/images/ico_049.jpg" width="48"/>
                                        </dd>
                                        <dd><em>2017年3月9日</em><a href="#">理查德•霍顿（Richard
                                            Horton）《柳叶刀》杂志总编辑：人类的未来：理智的乐观或是悲观的期待？</a></dd>
                                        <dd><em>2016年05月20日</em><a href="#">吴红波,联合国副秘书长，主管经济和社会事务,2030可持续发展议程：人类社会发展的重大机遇与挑战</a>
                                        </dd>
                                        <dd><em>2015年10月20日</em><a href="#">Gavin
                                            Towler霍尼韦尔特性材料和技术集团首席技术官、副总裁，碳氢化合物加工的前沿技术：近年来石油，天然气，煤炭和可再生燃料市场的发展和它们对技术需求的影响</a>
                                        </dd>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="navSub3 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>学术期刊</dt>
                                        <dd class="pic"><img alt="" height="48" src="resources/images/ico_048.jpg" width="48"/>
                                        </dd>
                                        <dd><h3>《清华大学学报》</h3>
                                            <p><a href="#" title="">清华大学学报包括三种期刊：《清华大学学报（自然科学版）》、
                                                《Tsinghua Science and Technology》、《清华大学学报（哲学社会科学版）》，
                                                均由清华大学主办。</a></p></dd>
                                        <dd><h3>《世界建筑》</h3>
                                            <p><a href="#" title="">作为国家一级杂志和建筑科学类核心期刊的《世界建筑》, 不仅是中
                                                国建筑界了解世界建筑动态的一个窗口，也架设了一座联络世界建筑和中国建筑发展的桥梁，
                                                成为一个促进建筑文化交流的广阔平台。</a></p></dd>
                                        <dd><h3>《清华法学》</h3>
                                            <p><a href="#" title="">《清华法学》由中华人民共和国教育部主管，清华大学主办，清华大学法学院
                                                《清华法学》编辑部编辑，双月刊，逢单月15日出版。</a></p></dd>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="PMenu"><img class="animated" height="8" src="resources/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="#" id="Nav_AMenu3">教育教学</a>
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
                                        <dd><em>2016年</em><a href="#" title="">截至2016年，清华大学累计招收培养外国留学生3万余人。</a></dd>
                                        <dd><em>2017-2018年</em><a href="#" title="">2017-2018学年度，清华大学将有39个本科专业、
                                            超过100个硕士专业和80个博士专业招收国际学生，其中有15个硕士项目和4个博士项目为全英文
                                            授课学位项目，共有400余门全英文授课本科和研究生课程面向国际学生开放。</a></dd>
                                        <dd><em>2016年</em><a href="#" title="”">2016年，在校国际学生接近3500人，
                                            来自116个国家，其中78%攻读学士、硕士或博士学位，22%作为访问学生学习专业课程、
                                            从事合作研究或学习汉语言文化。</a></dd>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="navSub3 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>教育扶贫</dt>
                                        <dd class="pic"><img alt="本科生教育" height="48" src="resources/images/ico_048.jpg"
                                                             width="48"/></dd>
                                        <dd><em>2003年9月12日</em><a href="#" title="”">清华大学教育扶贫远程教学站开通仪式暨教育扶贫工作座谈会在清华大学隆重举行。</a>
                                        </dd>
                                        <dd><em>2014年</em><a href="#" title="”">2014年《中国教育报》对清华教育扶贫十周年作了题为《知识惠泽社会、扶贫锤炼人才》
                                            的专题报道，服务社会是清华作为中国特色一流大学的使命和义不容辞的社会责任，教育扶贫作为一项公益事业，
                                            在清华大学的人才培养工作中也发挥着重要的作用，公益育人的思想与实践引领学生增强社会责任感。</a></dd>
                                        <dd><em>2007年12月29日</em><a href="#" title="”">中央一套《新闻联播》、北京电视台《北京您早》、中国教育电视台等
                                            电视台专门针对清华大学教育扶贫项目开展相应报道。</a></dd>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="PMenu"><img class="animated" height="8" src="resources/images/ico_014.png" width="15"/>
                    <a class="PAMenu" href="#" id="Nav_AMenu4">学校团队</a>
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
                                        </dd>
                                        <dd><em>2017年3月9日</em><a href="#">理查德•霍顿（Richard
                                            Horton）《柳叶刀》杂志总编辑：人类的未来：理智的乐观或是悲观的期待？</a></dd>
                                        <dd><em>2016年05月20日</em><a href="#">吴红波,联合国副秘书长，主管经济和社会事务,2030可持续发展议程：人类社会发展的重大机遇与挑战</a>
                                        </dd>
                                        <dd><em>2015年10月20日</em><a href="#">Gavin
                                            Towler霍尼韦尔特性材料和技术集团首席技术官、副总裁，碳氢化合物加工的前沿技术：近年来石油，天然气，煤炭和可再生燃料市场的发展和它们对技术需求的影响</a>
                                        </dd>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="navSub3 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>杰出人才</dt>
                                        <dd class="pic"><img alt="" height="48" src="resources/images/ico_050.jpg" width="48"/>
                                        </dd>
                                        <dd><em>两院院士</em><a href="#" title="”">院士是学术界给予科学家的最高荣誉称号，我校目前拥有中国科学院院士45名、
                                            中国工程院院士33名，其中包括1名双院院士。</a></dd>
                                        <dd><em>国家级教学名师奖获得者</em><a href="#" title="”">为了推动教授上讲台，全面提高高等教育教学质量，教育部
                                            组织了国家级教学名师奖的评选和表彰工作。迄今，我校共有16名教师获得此奖项。</a></dd>
                                        <dd><em>长江学者奖励计划入选者</em><a href="#" title="”">
                                            "长江学者奖励计划"是教育部与香港李嘉诚基金会为提高中国高等学校学术地位，振兴中国高等教育，
                                            于1998年共同筹资设立的专项高层次人才计划。是加强高等学校高层次人才队伍建设，吸引和培养造
                                            就一批具有国际影响的学科领军人才的一项重大举措。我校在职教师中，共159人入选特聘教授、
                                            36人入选青年学者。</a></dd>
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
                                        <li><a href="#" title="">媒体清华<span>进入</span></a></li>
                                        <li><a href="#" title="">图说清华<span>进入</span></a></li>
                                        <li><a href="#" title="">清华人物<span>进入</span></a></li>
                                        <li><a href="#" title="">校园写意<span>进入</span></a></li>
                                    </ul>
                                </div>
                                <div class="navSub2 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>最新动态</dt>
                                        <dd class="pic"><img alt="" height="48" src="resources/images/ico_046.jpg" width="48"/>
                                        </dd>
                                        <dd><em>2018年1月10日</em><a href="#">1月10日下午，国务院副总理刘延东来到清华大学，亲切会见清华师生代表，
                                            并考察调研航空发动机研究院和苏世民书院。教育部部长陈宝生，国务院副秘书长江小涓，北京市委常委、教育工委书
                                            记林克庆，清华大学校长邱勇、党委书记陈旭等参加相关活动。</a></dd>
                                        <dd><em>2018年01月8日</em><a href="#">1月8日上午，2017年度国家科学技术奖励大会在北京人民大会堂隆重举行。
                                            党和国家领导人习近平、李克强、张高丽、王沪宁出席大会并为获奖代表颁奖。李克强代表党中央、国务院在大会上讲话。
                                            国务院副总理刘延东在会上宣读了《国务院关于2017年度国家科学技术奖励的决定》</a></dd>
                                    </dl>
                                    <div class="BottomHidden"></div>
                                </div>
                                <div class="navSub3 nav_Menu02 autoPic">
                                    <dl>
                                        <dt>媒体清华</dt>
                                        <dd class="pic"><img alt="" height="48" src="resources/images/ico_048.jpg" width="48"/>
                                        </dd>
                                        <dd><em>独上高楼，望尽天涯路</em><a href="#" title="”">独上高楼，望尽天涯路
                                            ——纪念王国维诞辰140周年</a></dd>
                                        <dd><em>“双一流”之路，任重道远</em><a href="#" title="”">“学科布局与国家战略的契合度不够，
                                            能够达到世界一流的学科更是有限”“人才培养质量不高，尤其是具有国际化视野的人才还很少”
                                            “具有世界影响力的原创性成果数量不多，科研创新能力亟待提升”
                                            ……在前不久召开的教育部直属高校工作咨询委员会第二十七次会议上，与会高校党委书记、
                                            校长就如何加快一流大学和一流学科建设，推进以质量为重点的内涵发展展开讨论。</a></dd>
                                        <dd><em>长江学者奖励计划入选者</em><a href="#" title="”">
                                            "长江学者奖励计划"是教育部与香港李嘉诚基金会为提高中国高等学校学术地位，振兴中国高等教育，
                                            于1998年共同筹资设立的专项高层次人才计划。是加强高等学校高层次人才队伍建设，吸引和培养造
                                            就一批具有国际影响的学科领军人才的一项重大举措。我校在职教师中，共159人入选特聘教授、
                                            36人入选青年学者。</a></dd>
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