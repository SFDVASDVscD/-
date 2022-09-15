<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2022/4/27
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登陆页面</title>
    <link rel="stylesheet" href="fontawesome/css/all.css">

    <style>
        /* 设置nev大小 */
        /* .nav{
            width: 420px;
            height: 48px;
            background-color: #e8e7e3;
            margin: 100 auto;
        } */
        /* 设置nev的li */
        /* .nav li{ */
        /* float: left; */
        /* height: 100%; */
        /* 设置li高度 */
        /* line-height: 48px; */
        /* 将文字在父元素中垂直居中 */
        /* } */
        *{
            margin: 0;
            padding: 0;
            background-image: url(./denglu/imgs/u=2715254956,1142541802&fm=253&fmt=auto&app=138&f=JPEG.webp);
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
            top: 0;
            bottom:0 ;
            left: 0;
            right: 0;
            opacity: .7;
            /* opacity: .6; */
            background-image: none;
        }
        form{
            background-image: none;
        }
        .lll{
            font-size: 50px;
            font-family: 方正舒体;
            width: 420px;
            height: 200px;
            margin-top: 50px;
            padding: 10px;
            /* border: 10px red solid;  */
            margin-left: auto;
            margin-right:auto;
            /* background-image:url(imgs/u=3331457988\,2002546671&fm=253&fmt=auto&app=138&f=JPEG.webp); */
            /* background-image: url(imgs/u=3168329137\,3263381309&fm=193&f=GIF.jpg); */
        }
        a{
            text-decoration: none;
            /* 取消超链接下面的下划线 */
            color: #777;
            display: block;
            width: 90px;
            font-size: 15px;
            text-align: center;
            border-radius: 10px;
            /* height: 30px; */
            /* background-color: rgba(253, 253, 27,.3); */
            /* border: 1px #777 solid; */
            /* padding-top: 10px; */
        }
        .aa{
            float: left;
        }
        .aa::before{
            content: "";

        }
        .c{
            border-radius: 7px;
            opacity: .7;
        }
        a:hover{
            background-color: rgba(0, 0, 139,.6);
            border: 2px rebeccapurple solid;
            color: rgb(126, 118, 204);
        }
        li{
            /* display:none; */
            display: block;
            list-style: none;
            /* float: right; */
        }
        ul{
            padding-left:0 ;
        }
        .aaa{
            margin-top: 5px;
            margin-left: 180px;
            display: none;
            float: initial;
        }
        .b:hover .aaa{
            display: block;
        }
        .o{
            width: 20px;
            display:inline-block;
        }
        #a{
            text-decoration: none;
            display: block;
            width: 160px;
            height: 30px;
            position: absolute;
            top: 600px;
            left: 900px;
            color:#8d89f5;
            border-radius: 15px;
            line-height: 30px;
        }
    </style>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String s1 = request.getParameter("username");
    String s2 = request.getParameter("password");
    String s3=request.getParameter("sex");
    String s4=request.getParameter("userEmail");
    String s5=request.getParameter("userMobile");

    session.setAttribute("username", s1);
    session.setAttribute("password", s2);
    session.setAttribute("sex",s3);
    session.setAttribute("userEmail",s4);
    session.setAttribute("userMobile",s5);
%>
<div class="lll">
    <h1>欢迎注册</h1>
</div>
<div class="nav">
    <br>
    <from action="/regist" id="registFrom" method="post">
        <div class="o">
            <i class="far fa-user"></i>
        </div>
        <input type="text" name="username" id="username" placeholder="用户名" class="c">
        <br>
        <br>
        <div class="o">
            <i class="fas fa-code"></i>
        </div>
        <input type="password" name="password" placeholder="password" id="password" class="c">
        <br>
        <br>
        <div class="o">
            <i class="fas fa-code"></i>
        </div>
        <input type="password" name="RePassword" placeholder="RePassword" id="RePassword" class="c">
        <br>
        <br>
        性别
        <label ><i class="fas fa-mars"></i>男</label><input type="radio" name="sex" value="男" checked>
        <label ><i class="fas fa-venus"></i>女</label><input type="radio" name="sex" value="女">
        <br>
        <br>
        <i class="fas fa-envelope-square"></i>
        <input type="email" name="userEmail" placeholder="电子邮件地址" class="c">
        <br><br>
        <i class="fas fa-phone-square"></i> <input type="tel" name="userMobile" id="userMobile" placeholder="电话号码" class="c">
        <br>
        <br>
        <ul>
            <li>
                <a href="#" class="aa">注册</a>
            </li>
            <li>
                <a href="#" class="aa">忘记密码</a>
            </li>
            <li class="b"><a href="#" class="aa">第三方登录</a>
                <ul class="q">
                    <br>
                    <li class="aaa">
                        <a href="qq.html" >QQ</a>
                    </li>
                    <li class="aaa">
                        <a href="#">微信</a>
                    </li>
                    <li class="aaa">
                        <a href="#">电话登陆</a>
                    </li>
                </ul>
            </li>
        </ul>
        <br>
        <span id="msg" style="font-size: 12px; color:red;font-family:'幼圆' ">${messageModel.msg}</span>
        <button type="button" class="c" id="registBtn">提交</button>
        <input type="reset" class="c">
    </from>
</div>
<%out.println("<a href='./zhuyemian/morose.html' id='a'>" + "点击这里返回主页面" + "</a>");%>
</body>
<script type="text/javascript" src="js/jquery-3.5.1.js"></script>
<script type="text/javascript">
    $('#registBtn').click(function () {
        //获取用户姓名和密码值
        var username=$("#username").val();
        var password=$("#password").val();
        var RePassword=$("#RePassword").val();
        var userMobile=$("#userMobile").val();
        if(isEmpty(username)){
            $("#msg").html("用户名不可为空！<br>");
            return;
        }
        if(isEmpty(password)){
            $("#msg").html("密码不可为空！<br>");
            return;
        }
        if (isEmpty(RePassword)){
            $("#msg").html("请再次输入密码！<br>");
            return;
        }
        if(password!=RePassword)
        {
            $("#msg").html("两次输入密码不相同!<br>");
            return;
        }
        if(isEmpty( userMobile)){
            $("#msg").html("请填写电话号码<br>");
            return;
        }
        //都不为空，提交表单
        $("#registFrom").submit();
    });
    function isEmpty (str) {
        if (str==null||str.trim()==""){//去除前后空格
            return true;
        }
        return false;
    }
</script>
</html>

