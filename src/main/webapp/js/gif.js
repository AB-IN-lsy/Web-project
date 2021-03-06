/*
 * @Author: NEFU AB-IN
 * @Date: 2021-11-17 21:02:19
 * @FilePath: \test\src\main\webapp\js\gif.js
 * @LastEditTime: 2021-11-20 21:29:15
 */


/*
对于不擅长写js的我，简直是灾难！
以下包含偷学来的几种技术，用来做动画！
    1. 滚动窗口
        * Description: For smooth movement of pictures
        * 核心技术：隐藏与显示图片
        * 版本：
            新增控制时间变换
            新增按钮的使用变换
    2. 新增section
        * Description：Click the button of (more QRcode), there will be a new section
            appear on the top!
        * 核心技术：空间开辟
        * 版本：
    3. 滑动查看二级内容
        * Description：Click the button of Aprev Anext on the top of the 
            doctorBase and the officeBase, there will be a smooth movement of items
        * 核心技术：算距离 + 修改对应ul的left
        * 版本：
            新增滑动效果
            修改滑动后items出界的bug
*/
Kunyi.Index.DPosition = function (t, l, w) {
    $w = 300;
    $h = 165;
    $Rt = 0;
    $Rl = 0;
    if (t > $h) {
        $Rt = -165;
    } else {
        $Rt = 20;
    }
    if ((l + $w) > w) {
        $Rl = w - l - $w;
    }
    return [$Rt, $Rl];
}
Kunyi.Index.hiddenLine = $(".officesBase .hiddenLineL,.officesBase .hiddenLineR");
$(function () {
    if (Kunyi.BaseMark.width() >= 1200) {
        Kunyi.QuickMenuBase.data("type", 1);
    } else {
        Kunyi.QuickMenuBase.data("type", 0);
    }
    $(".Banners").slide({
        titCell: ".ulMark li",
        mainCell: ".AnimUl",
        effect: "leftLoop",
        vis: 1,
        autoPlay: true,
        interTime: 6288,
        easing: "easeInOutQuint",
        delayTime: 888,
        startFun: function (i, c) {
            $("#BannerInfo").text($(".AnimUl li:not(.clone)").eq(i).find("a").attr("title"));
        },
        endFun: function (i, c) {
        }
    });
    $("#BannerSwitch").click(function (e) {
        $t = $(this);
        if ($t.data("type") === 0) {
            $(".bannerBase .tools").stop().animate({"right": (Kunyi.BaseMark.width() >= 1200 ? "-220px" : "-256px")}, 588, "easeOutQuart", function () {
                $t.addClass("hidden");
                $t.data("type", 1);
                $t.find("span").text("展开");
            });
        } else {
            $(".bannerBase .tools").stop().animate({"right": (Kunyi.BaseMark.width() >= 1200 ? "36px" : "0px")}, 588, "easeOutQuart", function () {
                $t.removeClass("hidden");
                $t.data("type", 0);
                $t.find("span").text("隐藏");
            });
        }
    });
    $(".doctorsBase .tools .Aprev").click(function () {
        $obj = $(".doctorsBase .contents ul");
        $current = parseInt($obj.data("num"), 10);
        $Index = $current - 1;
        $LiSize = $obj.find("li").size();
        $BaseWidth = $(".doctorsBase .contents").width();
        // $BaseWidth = Kunyi.BaseMark.width();
        $Size = 0;
        $w = 0;
        $plus = 0;
        if ($BaseWidth >= 1200 && $BaseWidth < 1500) {
            $Size = Math.ceil($LiSize / 5);
            $w = 245 * 5;
            $plus = 55;
        } else if ($BaseWidth >= 980 && $BaseWidth < 1200) {
            $Size = Math.ceil($LiSize / 4);
            $w = (240 + 8) * 4;
            $plus = 42;
        } else {
            $Size = Math.ceil($LiSize / 6);
            $w = (240 + 12) * 6;
            // 更改$w，2021.12.6
            $plus = 55;
        }
        /*
        这里的plus与下面的专业的是不同的，调试了好久，因为除数不同了，导致plus的不同，bug已修复
        by AB-IN 2021/11/20
        上面说的一半对，还有是一开始的width引用错了，导致所用的都是按照width>=1200做的
        现已调整
        by AB-IN 2021/12/16
         */
        if ($Index >= 0) {
            $obj.data("num", $Index);
            $obj.stop().animate({
                left: (-$w * $Index + $plus) + "px"
            }, 888, "easeOutQuart");
        } else {
            $obj.data("num", ($Size - 1));
            $obj.stop().animate({
                left: (-$w * ($Size - 1) + $plus) + "px"
            }, 888, "easeOutQuart");
        }
    });
    $(".doctorsBase .tools .Anext").click(function () {
        $obj = $(".doctorsBase .contents ul");
        $current = parseInt($obj.data("num"), 10);
        $Index = $current + 1;
        $LiSize = $obj.find("li").size();
        $BaseWidth = $(".doctorsBase .contents").width();
        // $BaseWidth = Kunyi.BaseMark.width();
        $Size = 0;
        $w = 0;
        $plus = 0;
        if ($BaseWidth >= 1200 && $BaseWidth < 1500) {
            $Size = Math.ceil($LiSize / 5);
            $w = 245 * 5;
            $plus = 55;
        } else if ($BaseWidth >= 980 && $BaseWidth < 1200) {
            $Size = Math.ceil($LiSize / 4);
            $w = (240 + 8) * 4;
            $plus = 42;
        } else {
            $Size = Math.ceil($LiSize / 6);
            $w = (240 + 12) * 6;
            // 更改$w，2021.12.6
            $plus = 55;
        }
        if ($Index < $Size) {
            $obj.data("num", $Index);
            $obj.stop().animate({
                left: (-$w * $Index + $plus) + "px"
            }, 888, "easeOutQuart");
        } else {
            $obj.data("num", 0);
            $obj.stop().animate({
                left: (-$w * 0 + $plus) + "px"
            }, 888, "easeOutQuart");
        }
    });


    $("#DSearchSwitch").click(function () {
        if ($IsLoser) {
            $(".doctorsBase .DFastSearch").show();
        } else {
            $(".doctorsBase .DFastSearch").stop(false, true).fadeIn(888, "easeOutQuart");
        }
    });
    $(".doctorsBase .DFastSearch button").click(function () {
        if ($IsLoser) {
            $(".doctorsBase .DFastSearch").hide();
        } else {
            $(".doctorsBase .DFastSearch").stop(false, true).fadeOut(888, "easeOutQuart");
        }
    });
    $("#OSearchSwitch").click(function () {
        if ($IsLoser) {
            $(".officesBase .OFastSearch").show();
        } else {
            $(".officesBase .OFastSearch").stop(false, true).fadeIn(888, "easeOutQuart");
        }
    });
    $(".officesBase .OFastSearch button").click(function () {
        if ($IsLoser) {
            $(".officesBase .OFastSearch").hide();
        } else {
            $(".officesBase .OFastSearch").stop(false, true).fadeOut(888, "easeOutQuart");
        }
    });
    $(".officesBase .tools .Aprev").click(function () {
        $obj = $(".officesBase .contents ul");
        $current = parseInt($obj.data("num"), 10);
        $Index = $current - 1;
        $LiSize = $obj.find("li").size();
        $BaseWidth = $(".officesBase .contents").width();
        // $BaseWidth = Kunyi.BaseMark.width();
        $Size = 0;
        $w = 0;
        $plus = 0;
        if ($BaseWidth >= 1200 && $BaseWidth < 1500) {
            $Size = Math.ceil($LiSize / 4);
            $w = 380 * 4;
            $plus = 30;
        } else if ($BaseWidth >= 980 && $BaseWidth < 1200) {
            $Size = Math.ceil($LiSize / 3);
            $w = 332 * 3;
            // 修复宽宽度太大导致漏了一个的bug
            $plus = 17;
        } else {
            $Size = Math.ceil($LiSize / 5);
            $w = 380 * 5;
            // 修复宽度变小时，滑动的item长度不对的bug
            // $w代表视窗长度，$plus代表回去的初始值，plus越小移动的越大，$w相反
            $plus = 30;
        }
        Kunyi.Index.hiddenLine.hide();
        if ($Index >= 0) {
            $obj.data("num", $Index);
            $obj.stop().animate({
                left: (-$w * $Index + $plus) + "px"
            }, 888, "easeOutQuart", function () {
                Kunyi.Index.hiddenLine.show();
            });
        } else {
            $obj.data("num", ($Size - 1));
            $obj.stop().animate({
                left: (-$w * ($Size - 1) + $plus) + "px"
            }, 888, "easeOutQuart", function () {
                Kunyi.Index.hiddenLine.show();
            });
        }
    });
    $(".officesBase .tools .Anext").click(function () {
        $obj = $(".officesBase .contents ul");
        $current = parseInt($obj.data("num"), 10);
        $Index = $current + 1;
        $LiSize = $obj.find("li").size();
        $BaseWidth = $(".officesBase .contents").width();
        // $BaseWidth = Kunyi.BaseMark.width();
        $Size = 0;
        $w = 0;
        $plus = 0;
        if ($BaseWidth >= 1200 && $BaseWidth < 1500) {
            $Size = Math.ceil($LiSize / 4);
            $w = 380 * 4;
            $plus = 30;
        } else if ($BaseWidth >= 980 && $BaseWidth < 1200) {
            $Size = Math.ceil($LiSize / 3);
            $w = 332 * 3;
            $plus = 17;
        } else {
            $Size = Math.ceil($LiSize / 5);
            $w = 380 * 5;
            // 修复宽度变小时，滑动的item长度不对的bug
            // $w代表视窗长度，$plus代表回去的初始值，plus越小移动的越大，$w相反
            $plus = 30;
        }
        Kunyi.Index.hiddenLine.hide();
        if ($Index < $Size) {
            $obj.data("num", $Index);
            $obj.stop().animate({
                left: (-$w * $Index + $plus) + "px"
            }, 888, "easeOutQuart", function () {
                Kunyi.Index.hiddenLine.show();
            });
        } else {
            $obj.data("num", 0);
            $obj.stop().animate({
                left: (-$w * 0 + $plus) + "px"
            }, 888, "easeOutQuart", function () {
                Kunyi.Index.hiddenLine.show();
            });
        }
    });
    $(".othersBase .left .img").slide({
        titCell: ".index li",
        mainCell: ".Anim",
        effect: "leftLoop",
        vis: 1,
        autoPlay: true,
        interTime: 5188,
        easing: "easeOutQuint",
        delayTime: 688,
        startFun: function (i, c) {
        },
        endFun: function (i, c) {
        }
    });
    window.setTimeout(function () {
        $.getScript("js/Kunyi.Doctors.js", function () {
            $DListBase = $(".doctorsBase .DFastSearch .DListBase");
            $(Kunyi.Doctors).each(function (i) {
                var strTemp = "<div class=\"DList\" id=\"DList_" + this.Char + "\"><h6>" + this.Char + "</h6><ul>";
                $(this.Doctors).each(function (j) {
                    strTemp += "<li><div class='DName'><a href='Doctor-" + this.DID + ".html' target='_blank' class='name'>" + this.DName + "</a><div><a href='Doctor-" + this.DID + ".html' target='_blank'><img src='images/nophoto.gif' data-image='" + this.DImage + "'  width='99' height='133' /></a><label>" + this.DName + "</label><em>" + this.OfficeName + "</em><span>" + this.Position + "</span><a href='Doctor-" + this.DID + ".html' target='_blank' class='more'>详细</a> <a href='NewsDetail-449.html' target='_blank' class='date'>预约</a></div></div><p class='animated'>" + this.OfficeName + "</p></li>";
                });
                strTemp += "</ul><div class=\"clear\"></div></div>";
                $DListBase.append(strTemp);
            });
            $DListBase.append("<p><br/></p>");
            $(".doctorsBase .DFastSearch .DName").hover(function (e) {
                $t = $(this);
                $p = $t.parent();
                $obj = $t.find("div");
                $val = Kunyi.Index.DPosition($p.position().top, $p.position().left, $p.parent().parent().width());
                $obj.css({top: $val[0] + "px", left: $val[1] + "px"});
                $img = $obj.find("img")
                $img.attr("src", $img.data("image"));
                $obj.show();
            }, function () {
                $t = $(this);
                $obj = $t.find("div");
                $obj.hide();
            });
            $(".doctorsBase .DFastSearch .IndexWords li").click(function () {
                $t = $(this);
                $obj = $(".doctorsBase .DFastSearch .DListBase");
                $h = $("#DList_" + $t.text()).offset().top - $obj.offset().top + $obj.scrollTop();
                $obj.stop().animate({scrollTop: $h}, 666);
            });
        });
        $.getScript("js/Kunyi.Offices.js", function () {
            $OListBase = $(".officesBase .OListBase");
            var plus = 0, strTemp = "", num = 0;
            $(Kunyi.Offices).each(function (i) {
                var Height = 288, tH = 40, iH = 23, h = 15;
                if (i == 0) {
                    strTemp += "<div class='OList'><h6>" + this.DepName + "</h6>";
                    plus += tH;
                    num++;
                } else {
                    if (Height - plus > (tH + iH + h)) {
                        strTemp += "<div class='itemHidden'></div><h6>" + this.DepName + "</h6>";
                        plus += (tH + h);
                    } else {
                        strTemp += "</div><div class='OList'><h6>" + this.DepName + "</h6>";
                        plus = 0;
                        plus += tH;
                        num++;
                    }
                }
                $(this.Offices).each(function (j) {
                    if (Height - plus >= (iH - 5)) {
                        strTemp += "<div class='item'><span>> </span><a href='Office-" + this.OID + ".html' target='_blank'>" + this.OName + "</a></div>";
                        plus += iH;
                    } else {
                        plus = 0;
                        strTemp += "</div><div class='OList'><div class='item'><span>> </span><a href='Office-" + this.OID + ".html' target='_blank'>" + this.OName + "</a></div>";
                        plus += iH;
                        num++;
                    }
                });
            });
            strTemp += "</div>";
            $OListBase.css("width", (num * 240) + "px");
            $OListBase.append(strTemp);
            $OListBase.append("<div class='clear'></div>");
        });
    }, 1288);
});
$__W.resize(function () {
    // 解决了按F12时quickmenu
    // if (Kunyi.BaseMark.width() >= 1200) {
    //     Kunyi.QuickMenuBase.data("type", 1);
    //     $("nav .quickMenus").show();
    // } else {
    //     Kunyi.QuickMenuBase.data("type", 0);
    //     $("nav .quickMenus").hide();
    // }
    $(".doctorsBase .contents ul,.officesBase .contents ul").removeAttr("style").data("num", "0");
    $("#BannerSwitch").removeClass("hidden").data("type", 0);
    $("#BannerSwitch span").text("hide");
    $(".bannerBase .tools").removeAttr("style");
});
$__W.load(function () {

});