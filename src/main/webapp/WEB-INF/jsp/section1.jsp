<!--
* @Author: NEFU AB-IN
* @Date: 2021-11-17 20:23:29
* @FilePath: \test\src\main\webapp\WEB-INF\jsp\section1.jsp
* @LastEditTime: 2021-11-20 21:40:31
-->

<!--
此部分是section1，即用于展示专业的必修课
版本：目前还未加入数据库的更新
-->

<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>section1</title>
</head>

<section class="officesBase BaseMark">
    <div class="toolsBase">
        <div class="title">
            <em>计科专业</em> <span>Required Course</span>
        </div>
        <div class="tools">
            <a class="ASwitch" href="javascript:;" id="OSearchSwitch"
            >快速查找</a
            >
            <a class="Amore" href="#">更多 ></a>
            <a class="Aprev" href="javascript:;"></a>
            <a class="Anext" href="javascript:;"></a>
        </div>
        <div class="clear"></div>
    </div>
    <div class="contents">
        <ul data-num="0">
            <li>
                <i class="ico01"></i>
                <div class="img animated">
                    <img
                            alt="算法"
                            height="80"
                            src="resources/images/ico_051.png"
                            width="67"
                    />
                </div>
                <a class="office" href="#" title="算法">算法</a>
                <p>
                    算法是指解题方案的准确而完整的描述，是一系列解决问题的清晰指令......
                </p>
                <a class="btn more" href="#" title="算法">查看详细</a>
                <a class="btn doctor" href="#" title="算法讲师">知名导师</a>
            </li>
            <li>
                <i class="ico01"></i>
                <div class="img animated">
                    <img
                            alt="数据结构"
                            height="80"
                            src="resources/images/ico_052.png"
                            width="80"
                    />
                </div>
                <a class="office" href="#" title="数据结构">数据结构</a>
                <p>
                    数据结构是计算机存储、组织数据的方式。数据结构是指相互之间存在一种或多种特定关系的数据元素的集合......
                </p>
                <a class="btn more" href="#" title="数据结构">查看详细</a>
                <a class="btn doctor" href="#" title="数据结构讲师"
                >知名导师</a
                >
            </li>
            <li>
                <i class="ico01"></i>
                <div class="img animated">
                    <img
                            alt="数据库"
                            height="80"
                            src="resources/images/ico_053.png"
                            width="75"
                    />
                </div>
                <a class="office" href="#" title="数据库">数据库系统原理</a>
                <p>
                    数据库是“按照数据结构来组织、存储和管理数据的仓库”......
                </p>
                <a class="btn more" href="#" title="数据库">查看详细</a>
                <a class="btn doctor" href="#" title="数据库讲师"
                >知名导师</a
                >
            </li>
            <li>
                <i class="ico01"></i>
                <div class="img animated">
                    <img
                            alt="计算机网络"
                            height="80"
                            src="resources/images/ico_054.png"
                            width="80"
                    />
                </div>
                <a class="office" href="#" title="计算机网络">计算机网络</a>
                <p>
                    计算机网络是指将地理位置不同的具有独立功能的多台计算机及其外部设备......
                </p>
                <a class="btn more" href="#" title="计算机网络">查看详细</a>
                <a class="btn doctor" href="#" title="计算机网络讲师"
                >知名导师</a
                >
            </li>
            <li>
                <i class="ico01"></i>
                <div class="img animated">
                    <img
                            alt="python"
                            height="80"
                            src="resources/images/ico_055.png"
                            width="80"
                    />
                </div>
                <a class="office" href="#" title="python">Python</a>
                <p>
                    Python语法和动态类型，以及解释型语言的本质，使它成为多数平台上写脚本和快速开发应用的编程语言......
                </p>
                <a class="btn more" href="#" title="python">查看详细</a>
                <a class="btn doctor" href="#" title="python">知名导师</a>
            </li>
            <li>
                <i class="ico01"></i>
                <div class="img animated">
                    <img
                            alt="python"
                            height="80"
                            src="resources/images/ico_055.png"
                            width="80"
                    />
                </div>
                <a class="office" href="#" title="python">Python</a>
                <p>
                    Python语法和动态类型，以及解释型语言的本质，使它成为多数平台上写脚本和快速开发应用的编程语言......
                </p>
                <a class="btn more" href="#" title="python">查看详细</a>
                <a class="btn doctor" href="#" title="python">知名导师</a>
            </li>
            <li>
                <i class="ico01"></i>
                <div class="img animated">
                    <img
                            alt="python"
                            height="80"
                            src="resources/images/ico_055.png"
                            width="80"
                    />
                </div>
                <a class="office" href="#" title="python">Python</a>
                <p>
                    Python语法和动态类型，以及解释型语言的本质，使它成为多数平台上写脚本和快速开发应用的编程语言......
                </p>
                <a class="btn more" href="#" title="python">查看详细</a>
                <a class="btn doctor" href="#" title="python">知名导师</a>
            </li>
            <li>
                <i class="ico01"></i>
                <div class="img animated">
                    <img
                            alt="python"
                            height="80"
                            src="resources/images/ico_055.png"
                            width="80"
                    />
                </div>
                <a class="office" href="#" title="python">Python</a>
                <p>
                    Python语法和动态类型，以及解释型语言的本质，使它成为多数平台上写脚本和快速开发应用的编程语言......
                </p>
                <a class="btn more" href="#" title="python">查看详细</a>
                <a class="btn doctor" href="#" title="python">知名导师</a>
            </li>
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
