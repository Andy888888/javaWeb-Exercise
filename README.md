# javaWeb-Exercise
java web exercise

## 创建工程

>1.创建一个Empty Project
>2.添加一个Module，选择Web Application类型，勾选上Create web.xml
>3.在src中添加一个AServlet类,继承HttpServlet
        *重写doGet方法，千万不能留着super.doGet(req, resp);否则会有405错误*

`下图是super源码`
``` java
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String protocol = req.getProtocol();
        String msg = lStrings.getString("http.method_get_not_supported");
        if (protocol.endsWith("1.1")) {
            resp.sendError(405, msg);
        } else {
            resp.sendError(400, msg);
        }

    }
```

<br/><br/>

## 配置servlet映射
#### <servlet>:配置servlet类和servlet名称的映射
    <servlet-name>:servlet名称
    <servlet-class>:servlet类的具体class指向，需要全包名路径

#### <servlet-mapping>:配置servlet和html中的请求地址
    <servlet-name>:servlet名称
    <url-pattern>:html中的请求地址

#### web.xml示例
``` xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd"
         version="3.1">

    <servlet>
        <servlet-name>loginServlet</servlet-name>
        <servlet-class>severlet.LoginServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>loginServlet</servlet-name>
        <url-pattern>/loginServlet</url-pattern>
    </servlet-mapping>

</web-app>
```

``` html
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>测试</title>
  </head>
  <body>
      <form action="/loginServlet">
        <input id="name" name="name" type="text" />
          <input type="submit" value="提交">
      </form>
  </body>
</html>
```

### web.xml总结
>也就是说，一个servlet需要配置两个根节点，类似两张表，两个节点下的servlet-name子节点是关联字段，两个节点，描述了servlet的名称、class类、请求时的url地址。

<br/><br/><br/>

## 前后端数据传递

#### 后台获取jsp提交的数据
``` java
String name = request.getParameter("name");
```

#### 后台将数据传递给jsp
``` java
request.setAttribute("student", studentDo);
request.getRequestDispatcher("detail.jsp").forward(request, response);
```

#### jsp获取后台数据
``` java
// student为后台传递值的key
1.${student} <br/>
2.${student.name} <br/>
3.${student["gender"]} <br/>
4.${requestScope.get("student")} <br/>
5.<%=request.getAttribute("student") %> <br/>
```

<br/><br/>

## EL表达式(Expression Language)
>语法结构: ${expression} <br/>
价值:取代`<% java code %>` 这种复杂的方式，使得获取值等方式更加简化

#### pageScope
>将页面范围的变量名称映射到其值。例如，EL 表达式可以使用 `${pageScope.objectName}` 访问一个 JSP 中页面范围的对象，还可以使用 `${pageScope .objectName. attributeName} `访问对象的属性。

#### requestScope
>将请求范围的变量名称映射到其值。该对象允许访问请求对象的属性。例如，EL 表达式可以使用 `${requestScope. objectName} `访问一个 JSP 请求范围的对象，还可以使用 `${requestScope. objectName. attributeName}` 访问对象的属性。

#### sessionScope
>将会话范围的变量名称映射到其值。该对象允许访问会话对象的属性。例如：`${sessionScope. name}`
 
#### applicationScope
>将应用程序范围的变量名称映射到其值。该隐式对象允许访问应用程序范围的对象。

<br/>

### 注意事项

>*1、当要存取的属性名称中包含一些特殊字符，如 . 或 - 等并非字母或数字的符号，就一定要使用“[ ]“。例如：`${ user. stu-name}`应当改为`${user["stu-name"]} `*<br/>
>*2、`< %=request. getParameter(“username”)% >` 等价于 `${ param. username } `*<br/>
>*3、例如，但是下面的那句EL语言可以完成如果得到一个username为空，则不显示null,而是不显示值.*<br/>
>*4、以下执行顺序为4 1 2 3。
  `${requestScope.userlist}` 1 
  `${sessionScope.userlist}` 2 
  `${applicationScope.userlist}` 3 
  `${pageScope.userlist}` 4
  `${userlist}`*

<br/><br/>
