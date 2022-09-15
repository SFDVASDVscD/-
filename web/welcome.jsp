<%@ page import="com.xxx.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        *{
            background-image: url("./denglu/imgs/u=2715254956,1142541802&fm=253&fmt=auto&app=138&f=JPEG.webp");
        }
    </style>
</head>
<body>
<%
    User user= (User) session.getAttribute("user");
        String s1=user.getUserName();

        out.println("欢迎用户: " + s1 + "<br><br>");

        out.println("<a href='logout.jsp'>" + "点击这里进行用户的注销" + "</a>"+"<br><br>");

    out.println("<a href='zhuyemian/morose.html'>" + "点击这里返回主页面" + "</a>");



%>

</body>
</html>
