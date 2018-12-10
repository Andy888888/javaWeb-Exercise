<%--
  Created by IntelliJ IDEA.
  User: yanwenqiang
  Date: 2018/11/27
  Time: 12:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息</title>
</head>
<body>

<%@ include file="header.jsp" %>

<center>
<h2>学生登记信息</h2>
    <h3>
        1.${student} <br/>
        2.${student.name} <br/>
        3.${student["gender"]} <br/>
        4.${requestScope.get("student")} <br/>
        5.<%=request.getAttribute("student") %> <br/>
    </h3>
</center>

<%@ include file="footer.jsp" %>

</body>
</html>
