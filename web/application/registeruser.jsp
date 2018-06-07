<%--
  Created by IntelliJ IDEA.
  User: zfr
  Date: 2018/6/7
  Time: 下午2:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
        <table width="800" border="1" align="center" cellpadding="0" cellspacing="0">
            <tr>

                <td>
                    <font size="10">XXXX平台</font>
                </td>

            </tr>
            <tr>

                <td>
                    <form name="frm" method="post">
                        <table width="100%" border="1" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="30">
                                    用户注册
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    姓名:<input name="name" type="text" size="10">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    性别:<input name="sex" type="text" size="10">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    邮箱:<input name="email" type="text" size="10">
                                </td>
                            </tr>
                        </table>
                    </form>
                </td>

            </tr>
            <tr>
                <td>
                    <input type="button" style="width: 80px" value="提交" onclick="btnAdd('${pageContext.request.contextPath}/registerUser')">
                    <input type="reset" style="width: 80px" value="重置">
                    <input type="button" style="width: 80px" value="取消">
                </td>
            </tr>
        </table>

        <script language="JavaScript">
            function btnAdd(url) {
                document.frm.action=url;
                document.frm.submit();
            }


        </script>
</body>
</html>
