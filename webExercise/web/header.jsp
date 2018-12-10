<%--
  Created by IntelliJ IDEA.
  User: yanwenqiang
  Date: 2018/11/29
  Time: 10:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    #banner {
        width: 100%;
        left: 0;
        right: 0;
        top: 0;
        height: 100px;
    }

    .nav {
        background: gray;
        width: 92px;
        text-align: center;
        white-space: nowrap;
        color: #ffffff;
        cursor: pointer;
        line-height: 37px;
    }

    .nav a {
        display: block; /* 把行内元素 变成 块级元素 */
        width: 92px; /* 盒子 宽度 */
        height: 37px; /* 盒子 高度 */
        text-decoration: none;
        vertical-align: middle;

    }

    .nav a:link {
        color: #ffffff
    }

    /* 未访问的链接 */
    .nav a:visited {
        color: #ffffff
    }

    /* 已访问的链接 */
    .nav a:hover {
        color: #CC00FF
    }

    .nav:hover {
        background: lightgray;
        color: #CC00FF;
    }

    div.bar { /* styles for horizontal top bar */
        height: 37px;
        font-size: 110%;
        color: #ffffff;
        text-align: center;
    }

    div.bar div {
        padding: 7px 20px 3px 20px;
    }

    a.bar {
        text-decoration: none;
    }

    a.bar:hover {
        text-decoration: underline;
    }

    .search_back {
        background: gray;
        height: 37px;
    }

    input {
        vertical-align: middle;
    }
</style>
<center>
    <div id="banner">
        <img src="img/logo.png" width="100px" height="100px"/>
    </div>
    <table width="900" border="0" cellspacing="0" cellpadding="0">
        <td width="120" class="nav"><a href="#">首页</a></td>
        <td width="120" class="nav">房源</td>
        <td width="120" class="nav">客源</td>
        <td width="200" class="nav">关于我们</td>
        <td width="350">
            <div style="position:relative;" class="search_back">
                <div id="123">
                    <div class="bar">
                        <div>搜索:
                            <input type="text"/>
                            <input type="button" value="搜索🔍"/>
                        </div>
                    </div>
                </div>
            </div>
        </td>
        </tr>
    </table>
</center>
