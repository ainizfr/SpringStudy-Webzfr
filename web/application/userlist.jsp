<%--
  Created by IntelliJ IDEA.
  User: zfr
  Date: 2018/6/8
  Time: 上午8:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <font size="10">  XXXx平台</font>
            </td>
        </tr>
        <tr>
            <td height="30">
                <input type="button" style="width: 80px" value="注册" onclick="btnAdd('${pageContext.request.contextPath}/toRegister')">
                <input type="button" style="width: 80px" value="修改" onclick="btnEdit('${pageContext.request.contextPath}/toEditUser')">
                <input type="button" style="width: 80px" value="删除" onclick="benDelete('${pageContext.request.contextPath}/deleteUser')">

            </td>
        </tr>
        <tr>
            <td>
                <form name="frm" method="post">
                    <table width="100%" border="1" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="30" width="5%">选择</td>
                            <td width="15%">姓名</td>
                            <td width="10%">性别</td>
                            <td >邮箱</td>
                        </tr>
                        <tr>
                            <td height="20">
                                <input type="radio" name ="id" value="1" >
                            </td>
                            <td>李四</td>
                            <td>男</td>
                            <td>zhangrui83@outlook.com</td>
                        </tr>

                        <tr>
                            <td height="20">
                                <input type="radio" name ="id" value="2" >
                            </td>
                            <td>张锋瑞</td>
                            <td>男</td>
                            <td>zhangrui83@outlook.com</td>
                        </tr>

                        <tr>
                            <td height="20">
                                <input type="radio" name ="id" value="3" >
                            </td>
                            <td>厉害了</td>
                            <td>女</td>
                            <td>zhangrui83@outlook.com</td>
                        </tr>
                    </table>
                </form>

            </td>
        </tr>

    </table>
            <script language="JavaScript">
                function btnAdd(url) {
                    window.location.replace(url);
                }

                function btnEdit(url) {
                    document.frm.action=url;
                    document.frm.submit();
                }

                function benDelete(url) {
                    document.frm.action=url;
                    document.frm.submit();
                }
            </script>
</body>
</html>
