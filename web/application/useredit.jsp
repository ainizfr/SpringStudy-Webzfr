<%--
  Created by IntelliJ IDEA.
  User: zfr
  Date: 2018/6/13
  Time: 上午10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户信息</title>
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
                            用户信息修改
                        </td>
                    </tr>
                    <tr>
                        <td>
                            用户id :<input name="id" type="text"  size="10" value="${user.id}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            姓名:<input name="name" type="text" size="10" value="${user.name}">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            性别:<input name="sex" type="text" size="10" value="${user.sex} ">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            邮箱:<input name="email" type="text" size="10" value="${user.email}">
                        </td>
                    </tr>
                </table>
            </form>
        </td>

    </tr>
    <tr>
        <td>
            <input type="button" style="width: 80px" value="提交" onclick="btnEdit('${pageContext.request.contextPath}/editUser')">
            <input type="reset" style="width: 80px" value="重置">
            <input type="button" style="width: 80px" value="取消">
        </td>
    </tr>
</table>
<script language="JavaScript">
 function btnEdit(url) {
     document.frm.action=url;
     document.frm.submit();
 }

</script>

</body>
</html>
