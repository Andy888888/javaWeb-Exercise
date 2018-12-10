<%--
  Created by IntelliJ IDEA.
  User: yanwenqiang
  Date: 2018/11/27
  Time: 9:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登记信息</title>
    <style>
        body {
            font-size: 12px;
        }

        .key {
            align: right;
        }

        .values {
            align: left;
        }

        #container {
            width: 300px;
            height: 200px;
            border: 1px solid gray;
            margin: 60px auto;
            padding: 20px;
        }

        #paper {
            width: 220px;
            margin: 20px auto;
        }

        #operate {
            width: 60px;
            height: 50px;
            margin: 60px auto;
        }
    </style>
</head>
<body>
<center><h2>学生信息登记</h2></center>
<%@ include file="header.jsp"%>
<div id="container">
    <form action="/loginServlet" method="post">
        <table id="paper">
            <tr>
                <td class="key">姓名:</td>
                <td class="values"><input name="name" type="text"/></td>
            </tr>
            <tr>
                <td class="key">性别:</td>
                <td class="values">
                    <input type="radio" name="gender" value="男"/>男
                    <input type="radio" name="gender" value="女"/>女
                </td>
            </tr>
            <tr>
                <td class="key">年龄:</td>
                <td class="values"><input name="age" type="text"/></td>
            </tr>
            <tr>
                <td class="key">学号:</td>
                <td class="values"><input name="number" type="text"/></td>
            </tr>
        </table>

        <div id="operate">
            <input type="submit" value="提交">
        </div>

    </form>

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
