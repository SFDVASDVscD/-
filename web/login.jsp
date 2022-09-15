<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2022/4/9
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登陆页面</title>
    <link rel="stylesheet" href="../fontawesome/css/all.css">
    <style>
        *{
            margin: 0;
            padding: 0;
            background-image: url(imgs/denglu.webp);
        }
        .nav{
            /* font-size: 50px; */
            /* color: #baf; */
            width: 300px;
            height:300px;
            padding: 50px;
            /* border: 10px red solid; */
            position: absolute;
            margin: auto;
            top: 200px;
            bottom:0 ;
            left: 0;
            right: 0;
            /* opacity: .6; */
            background-image: none;
        }
        form{
            background-image: none;
            opacity: .6;
        }
        .c{
            border: rgba(0,0,0,.6) solid 1px;
            border-radius: 5px;
        }
        .o{
            width: 20px;
            display:inline-block;
        }
        .lll{
            font-size: 100px;
            font-family: 方正舒体;
            width: 420px;
            height: 300px;
            margin-top: 0px;
            padding-top: 100px;
            margin-left: auto;
            margin-right:auto;
            background-image: none;
        }
        a{
            text-decoration: none;
            display: block;
            width: 160px;
            height: 30px;
            position: absolute;
            top: 500px;
            left: 800px;
            color:#8d89f5;
        }
        a:hover{
            color: #4f4c8e;
        }
    </style>
</head>
<body>
<div class="lll">欢迎登陆</div>
<div class="nav">
    <br>
    <form action="login" id="loginForm" method="post">
        <div class="o">
            <i class="far fa-user"></i>
        </div>
        <input type="text" name="uname" placeholder="用户名" id="uname" class="c" value="${messageModel.object.userName}">
        <br>
        <br>
        <div class="o">
            <i class="fas fa-code"></i>
        </div>
        <input type="password" name="upwd" placeholder="password" id="upwd" class="c"  value="${messageModel.object.userPwd}">
        <br>
        <br>
        <span id="msg" style="font-size: 12px; color:red;font-family:'幼圆' ">${messageModel.msg}</span>
        <button type="button" value="登录" id="loginBtn" class="c">登录</button>
        <button type="button" class="c" onclick="window.location.href='./denglu/select.html'">注册</button>
    </form>
</div>
    <%  request.setCharacterEncoding("UTF-8");
        String s1 = request.getParameter("uname");
        String s2 = request.getParameter("upwd");
        session.setAttribute("uname", s1);
        session.setAttribute("upwd", s2);
        out.println("<a href='./zhuyemian/morose.html'>" + "点击这里返回主页面" + "</a>");
    %>
</body>
<%--引入jquery的js--%>
<script type="text/javascript" src="js/jquery-3.5.1.js"></script>
<script type="text/javascript">
    <%--    通过id选择器绑定--%>
    <%--
    登陆表单验证
    1.给登录按钮绑定点击事件
    2.获取用户姓名和密码的值
    3.判断姓名是否为空
        如果姓名为空，提示用户（span标签赋值），并且return
    4.判断密码是否为空
        如果密码为空，提示用户（span标签赋值），并且return
    5如果都不为空则手动提交表单
    --%>
    $('#loginBtn').click(function () {
        //获取用户姓名和密码值
        var uname=$("#uname").val();
        var upwd=$("#upwd").val();
        if(isEmpty(uname)){
            $("#msg").html("用户名不可为空！<br>");
            return;
        }
        if(isEmpty(upwd)){
            $("#msg").html("密码不可为空！<br>");
            return;
        }
        //都不为空，提交表单
        $("#loginForm").submit();
    });
    //判断字符串是否为空
    //如果为空返回true
    function isEmpty (str) {
        if (str==null||str.trim()==""){//去除前后空格
            return true;
        }
        return false;
    }
</script>
</html>
