<font color=#000000	size=3 face=楷体>Powered by:**NEFU AB-IN**</font>

# <font color=#6495ED size=6 >Web 开发技术项目设计</font>

>  <font color=#000000 size=4 face=粗体>服务器端部署</font>
>
> 记录了项目部署服务器端遇到的问题
>
> [宝塔war包放入webapps无法访问_NEFU AB-IN's Blog-CSDN博客](https://blog.csdn.net/qq_45859188/article/details/121353247)

[![Blog page](https://img.shields.io/badge/Blog-page-red.svg?style=flat)](https://www.ab-in.cn) [![GPLV3 License](https://img.shields.io/badge/Licence-GPLV3-green.svg?style=flat)](https://github.com/AB-IN-lsy/web-project/blob/master/LICENSE) [![Home page](https://img.shields.io/badge/home-page-yellow.svg?style=flat)](https://web.ab-in.cn/test/index) <a href="https://github.com/AB-IN-lsy/web-project/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/AB-IN-lsy/web-project"></a>



* ### <font color=#000000 size=4 face=粗体>关于</font>

  **请用chrome或者360浏览器打开！！！！**

  （对于Edge的滑轮滚动Bug目前无法修复）

* ### <font color=#000000 size=4 face=粗体>项目时长</font>

  ![img1](https://github.com/AB-IN-lsy/Web-project/blob/master/asserts/img1.png)

  ![img2](https://github.com/AB-IN-lsy/Web-project/blob/master/asserts/img2.png)

  ![img4](https://github.com/AB-IN-lsy/Web-project/blob/master/asserts/img4.png)

* ### <font color=#000000 size=4 face=粗体>项目日志</font>

  * 2021.11.14 

    * 画好ER图

    * 搭建好整体项目框架

      ![img3](https://github.com/AB-IN-lsy/Web-project/blob/master/asserts/img3.png)

  * 2021.11.15 

    * 搭建好云服务器tomcat，配置了宝塔页面的tomcat
    * 上传了项目至github
    * 测试项目至老师部署平台

  * 2021.11.16 

    * 解决了Java版本不同的问题
    * 尝试学习框架（放弃）
    * 复习web知识点
    * 构思主页面

  * 2021.11.17 

    * 开始编写整体index.jsp的各个部分
    * 从footer开始编写

  * 2021.11.18 

    * 先决定开始写数据库
    * 完成用户表，教师表，学科表，实验室表，实验室新闻表，新闻表的建立

  * 2021.11.19

    * 写完lab模块，连同css与js，实现轮播图，实现按钮轮播图（未加入数据库）
    * 写完QRcode模块，并对接js
    * 写完major模块，实现滑动效果（未加入数据库）
    * ps: 所有具体的js,css操作介绍均放在了对应的js,css文件中

  * 2021.11.20

    * 写完teacher模块，和major一样模式（未加入数据库）
    * 写完news模块（未加入数据库）

  * 2021.11.21

    * 完善前面写的js,css部分
    * 加入lab数据库更新（包括实体类，servlet，util，datasource，二级跳转，JSTL，EL）
    * 加入major数据库更新

  * 2021.11.22

    * 加入teacher数据库更新
    * 编写banner部分
      * Expand: 可自定义加入多个图片 2021-11-22
      * Method: 加入list item的同时，加下面的animated按钮，毕竟实现的方法就是每过一段时间就让animated新增状态为on，进而切换图片 2021-11-22

    * 编写nav部分
    * 加入news数据库更新
      * 加入右栏数据库更新
      * 加入左栏数据库更新

  * 2021.11.23

    * 编写nav
      * 制作了多个小图标 2021/11/23
      * css样式圆圈拓展 2021/11/23
      * quick menu的sub menu写好 2021/11/23
      * 写好了每个section的JavaScript: scroll() 
      * ps:因为偷懒所以没写第二界面 2021/11/23

  * 2021.11.24

    * 加入nav数据库更新
    * 加入了从数据库中利用主码进行的查询，并打开详情页 2021/11/24
    * 编写header部分
      * 加入开场动画
      * 找到图标，设计登录后台 2021/11/24

  * 2021.11.25

    * 总体进行查缺补漏
    * 开始对index.jsp进行填充
    * 解决js, css失效的问题

  * 2021.11.26

    * 开始备考

  * 2021.11.27

    * 忍不住看一眼，发现制作的图标不够精良，回炉抢修
    * 添加logo

  * 2021.12.3

    * 部署项目至服务器运行

  * 2021.12.4

    * 部署项目至大电脑运行，发现@media并不佳，对着大电脑修改@media
    * 2021/12/4 星期六
      刚实习完，老师布置了自己完成update的工作，
      肝了十分钟就出来了，不就是...嘛
      本身累得够呛，但一想到今天实习的内容
      正是鸽了很久的后端，所以还是马不停蹄的从八点一直肝到十二点
      完成了增，删，改
      查应该明天讲，或者明天讲登录，总之快完成了

  * 2021.12.5

    * 2021/12/5 星期日
      完成了查的工作
      运用了like模糊查询，效果显著，DEBUG了好长时间
      不过效果很好，后端结束！
    * 发现nav冗余太大，更改了横导航栏的所有属性，将所有二级属性全部加入进去了，并加入了链接，减少了冗余的链接 2021/12/5

  * 2021.12.7

    * 开始策划第二界面，基于主页面的模式进行修改，引入header, nav, footer不变的板块

  * 2021.12.8

    * 完成所有第二板块的制作
    * 发现servlet冗余太多，建立持久层Dao，将部分冗余函数放入
    * 更改项目结构

  * $2021.12.9$

    * 完成所有第三板块的制作
    * 学习github release版本发布
    * **完成收工前第一版 v1.0**

  * $2021.12.10$

    * 去除冗余链接，将没用的链接由#变成javascript:
    * 解决网页资源加载过慢
      * 创建OSS
      * 配置OSS的CDN
      * 并上传文件
      * 更改项目中的url
    * 增加header中搜索功能
      * 模糊搜素，范围扩大到每个属性
      * 可选择模块进行搜索，搜索后自行跳转相应模块
    * 完善持久层的结构调用
    * 更改了hearder的logo，新增矢量图
    * **完成收工前第二版 v1.1**

  * $2021.12.11$

    * 更改密码，防止所有人都可以进后台
    * 更改login页面的返回按钮，可以返回主界面
    * 更改后端的整体配色
    * 添加了后端富文本提交
      * 修改了文章内容的结构及样式
      * 只支持纯文本，不支持图片及视频
    * 修改了input标签设置为disabled无法提交的bug，更改为readonly
    * 修改update和save的servlet的重定向
    * **完成收工前第三版 v1.2**

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

Web-project is issued under GPLv3.   license.[License](https://github.com/AB-IN-lsy/Web-project/blob/master/LICENSE)

# 版权声明

Web-project 使用 GPL v3 协议.
