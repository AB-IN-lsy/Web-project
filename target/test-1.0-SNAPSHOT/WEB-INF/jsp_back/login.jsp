<
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="<%=path%>/css/web.css" rel="stylesheet" type="text/css">
</head>

<body>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="400" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#000066">
    <tr id="title">
        <td height="25">
            <div align="center" ><font color="#FFFFFF"><strong>请先登陆</strong></font></div>
        </td>
    </tr>
    <tr>
        <td bgcolor="#FFFFFF">
            <form name="form1" method="post" action="#">
                <table width="100%" border="0" align="center">
                    <tr>
                        <td colspan="2" align="center">
                            <b>帐户:</b>
                            <input name="account" type="text" id="yhm" value="admin" size="12"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <b>密码:</b>
                            <input name="passwd" type="password" id="yhmm" value="20010831" size="12"></td>
                    </tr>

                    <tr>

                        <td align="center">
                            <input class="animated" type="submit" name="Submit" value="登陆"> &nbsp;&nbsp;&nbsp;
                            <input class="animated" type="reset" name="Submit2" value="取消">
                        </td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
</table>
</body>
</html>
