<font color=#000000	size=3 face=楷体>Powered by:**NEFU AB-IN**</font>

# <font color=#6495ED size=6 >Web 开发技术项目设计</font>

>  <font color=#000000 size=4 face=粗体>服务器端部署</font>
>
> 记录了项目部署服务器端遇到的问题
>
> [宝塔war包放入webapps无法访问_NEFU AB-IN's Blog-CSDN博客](https://blog.csdn.net/qq_45859188/article/details/121353247)

[![GPLV3 License](https://img.shields.io/badge/Licence-GPLV3-green.svg?style=flat)](https://github.com/AB-IN-lsy/web-project/blob/master/LICENSE) [![Home page](https://img.shields.io/badge/home-page-yellow.svg?style=flat)](https://web.ab-in.cn/project) <a href="https://github.com/AB-IN-lsy/web-project/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/AB-IN-lsy/web-project"></a>

* ### <font color=#000000 size=4 face=粗体>项目要求</font>

  基于 HTML/CSS/JS/Servlet/JDBC 等技术完成以下设计内容 

  允许并鼓励使用 Bootstrap/easy-ui/flat-ui 等 UI 框架，及轮播/动画/图表/全屏滚动等等插件 

  允许使用 vue/react/springboot 等技术，但需部署在学生个人服务器，提供访问网址 

  本设计占总成绩 40%，按功能完成设计状况评分 分组：每人 1 组，独立完成 

  截至时间：15 周(具体日期待定) 

  提交/部署方式：以 war 包上传到指定系统，项目统一部署在云服务器 

  部署环境：Docker Tomcat9+MySQL8 容器 

  项目展示：所有学生项目在公网公开展示

* ### <font color=#000000 size=4 face=粗体>设计内容</font>

  计算机科学与技术专业网站 

  主要考核内容：网站整体设计，用户互交体验 

  包括：HTML 布局，HTML 标签的使用，应用 CSS 样式增强网站显示效果，使用 JS 动态改变 页面，Servlet 对数据的处理，JDBC 数据库访问等

* ### <font color=#000000 size=4 face=粗体>主要功能</font>

  * #### <font color=#000000 size=4 face=粗体>前台网站</font>

    主要板块内容：专业介绍，实验室，教师队伍，就业指南，新闻，公告等。 

    要求至少包含导航。 

    要求板块必须包含 2 级内容。例如，专业介绍：专业简介，方向简介等；实验室：923 创新 实验室，925 移动开发实验室，923 实验室等；并能跳转至 2 级详细内容。 

    ****

    教师队伍：教授，副教授，讲师等 

    例如，当点击副教授时，跳转至副教授列表，再次点击某教师时，跳转至教师详细介绍，内 容应尽可能包含文字/图片多媒体等信息 

    ****

    新闻公告：主页列出最近 5 个新闻与公告，显示标题时间等，要求从数据库中获取，点击标 题跳转至信息的详细描述。

  * #### <font color=#000000 size=4 face=粗体>后台系统</font>

    需在前台网站显示提供后台关系系统入口链接，后台统一管理员登录用户名/密码 admin 

    管理员登录后，可在后台对新闻公告信息进行增加，增删改查全部完成有加分 

    过滤器，未登录状态无法访问进入后台管理系统 

    仅需实现发布基本文本信息，无需包含图片等附件，实现富文本提交有加分 信息无需分页 除新闻公告外，教师实验室介绍等可使用静态数据 所有介绍类内容应尽可能包含文字与图片 所有文字/图片不必使用真实信息

    ****

    信息无需分页 

    除新闻公告外，教师实验室介绍等可使用静态数据 

    所有介绍类内容应尽可能包含文字与图片 

    所有文字/图片不必使用真实信息


# License

Web-project is issued under GPLv3.   license.[License](http://kodcloud.com/tools/licenses/license.txt)  

# 版权声明

Web-project 使用 GPL v3 协议.
