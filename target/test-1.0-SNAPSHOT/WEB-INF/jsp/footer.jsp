<!--
* @Author: NEFU AB-IN
* @Date: 2021-11-17 20:23:29
* @FilePath: \test\src\main\webapp\WEB-INF\jsp\footer.jsp
* @LastEditTime: 2021-11-20 21:38:06
-->

<!--
此部分是footer
版本: 定义了僵硬的灯笼，对接gif.js 2021-11-19
设置了灯笼的Javascript: scroll 2021-11-19
-->

<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>footer</title>
</head>

<footer>
    <img
            class="load"
            height="18"
            id="QRMark"
            src="https://oss.ab-in.cn/images/ico_036.png"
            width="35"
    />
    <div class="menusBase">
        <div class="BaseMark">
            <dl>
                <dt><em>教学教育</em><span>teaching education</span></dt>
                <br/><br/>
                <dd><a href="javascript:" title="">本科生教育</a></dd>
                <dd><a href="javascript:" title="">研究生教育</a></dd>
                <dd><a href="javascript:" title="">国际学生教育</a></dd>
                <dd><a href="javascript:" title="">继续教育</a></dd>
            </dl>
            <dl>
                <dt><em>科学研究</em><span>scientific research</span></dt>
                <br/><br/>
                <dd><a href="javascript:" title="">科研成果</a></dd>
                <dd><a href="javascript:" title="">科研项目</a></dd>
                <dd><a href="javascript:" title="">科研机构</a></dd>
                <dd><a href="javascript:" title="">科研合作</a></dd>
            </dl>
            <dl>
                <dt><em>招生就业</em><span>employment</span></dt>
                <br/><br/>
                <dd><a href="javascript:">本科生招生</a></dd>
                <dd><a href="javascript:">研究生招生</a></dd>
                <dd><a href="javascript:">国际学生招生</a></dd>
                <dd><a href="javascript:">学生职业发展</a></dd>
            </dl>
            <dl>
                <dt><em>走进东林</em><span>Go into NEFU</span></dt>
                <br/><br/>
                <dd><a href="javascript:">校园生活</a></dd>
                <dd><a href="javascript:">校园风光</a></dd>
                <dd><a href="javascript:">使用信息</a></dd>
                <dd><a href="javascript:">一流大学建设方案</a></dd>
            </dl>
            <dl>
                <div class="QRBtn">
                    <img
                            class="load"
                            height="85"
                            src="https://oss.ab-in.cn/images/QRcode.jpg"
                            width="85"
                    /><span>扫描关注官方微信号</span
                ><a href="javascript:void(0)" id="BtnQRMore">更多二维码</a>
                </div>
            </dl>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="BottomHidden"></div>
    <div class="DWeibo">
        <a class="weibo" href="javascript:" title="">官方邮箱</a>
        <a class="tencent" href="javascript:" title="">官方微博</a>
        <div class="clear"></div>
    </div>

    <div class="websiteInfo">
        <div class="info">
            电话查号台：153-0543-8198 &nbsp; &nbsp;
            管理员信箱：liusy200708@163.com&nbsp;&nbsp; &nbsp;
            地址：哈尔滨市东北林业大学 &nbsp;
        </div>
        <ul>
            <li class="first">
                <a href="javascript:">关于我们</a>
            </li>
            <li><a href="javascript:">法律声明</a></li>
            <li><a href="javascript:">院校地图</a></li>
            <li><a href="javascript:">联系我们</a></li>
            <li><a href="javascript:">院校信箱</a></li>
        </ul>
        <div class="clear"></div>
        <p>
            &copy;2019-2021
            <a href="https://beian.miit.gov.cn/"
            >备案号鲁ICP备2021035431号
            </a>
        </p>
        <select id="ddlLinks">
            <option value="0"><span>其他链接</span> HYPERLINK</option>
            <option value="https://ab-in.cn">AB-IN Blog</option>
            <option value="https://ssh.ab-in.cn">AB-IN ssh</option>
            <option value="https://kod.ab-in.cn">AB-IN kod</option>
            <option value="https://game.ab-in.cn">AB-IN game</option>
            <option value="https://tomcat.ipangbo.cn/web">Pangbo's web</option>
        </select>
    </div>
    <div>
        <a href="javascript:scroll(0,0)">
            <div id="shangxia">
                <div id="xia"></div>
            </div>
        </a>
    </div>
</footer>
</html>
