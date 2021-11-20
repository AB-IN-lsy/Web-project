<!--
 * @Author: NEFU AB-IN
 * @Date: 2021-11-17 20:23:29
 * @FilePath: \test\src\main\webapp\WEB-INF\jsp\QR.jsp
 * @LastEditTime: 2021-11-20 21:41:29
-->

<!--
    此部分是QRcode，即用于展示多个二维码的呈现，对接index.js的js实现
    （纯为炫技）
-->

<%@ page pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>Title</title>
    </head>

    <div id="QRBase">
        <div class="BaseMark">
            <div class="QRBase">
                <div class="QRList">
                    <ul>
                        <li>
                            <div>
                                <img
                                    height="75"
                                    src="resources/images/QRcode.jpg"
                                    width="75"
                                />
                            </div>
                        </li>
                        <li>
                            <div>
                                <img
                                    height="75"
                                    src="resources/images/QRcode.jpg"
                                    width="75"
                                />
                            </div>
                        </li>
                        <li>
                            <div>
                                <img
                                    height="75"
                                    src="resources/images/QRcode.jpg"
                                    width="75"
                                />
                            </div>
                        </li>
                        <li>
                            <div>
                                <img
                                    height="75"
                                    src="resources/images/QRcode.jpg"
                                    width="75"
                                />
                            </div>
                        </li>
                        <li>
                            <div>
                                <img
                                    height="75"
                                    src="resources/images/QRcode.jpg"
                                    width="75"
                                />
                            </div>
                        </li>
                        <li>
                            <div>
                                <img
                                    height="75"
                                    src="resources/images/QRcode.jpg"
                                    width="75"
                                />
                            </div>
                        </li>
                        <li>
                            <div>
                                <img
                                    height="75"
                                    src="resources/images/QRcode.jpg"
                                    width="75"
                                />
                            </div>
                        </li>
                        <li>
                            <div>
                                <img
                                    height="75"
                                    src="resources/images/QRcode.jpg"
                                    width="75"
                                />
                            </div>
                        </li>
                        <li>
                            <div>
                                <img
                                    height="75"
                                    src="resources/images/QRcode.jpg"
                                    width="75"
                                />
                            </div>
                        </li>
                    </ul>
                    <div class="clear"></div>
                </div>
                <button class="QRClose animated">关闭</button>
                <div class="BottomHidden"></div>
            </div>
        </div>
    </div>
</html>
