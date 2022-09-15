<%--
  Created by IntelliJ IDEA.
  User: 86182
  Date: 2022/4/26
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎再次登录</title>
    <script type="text/javascript">
        function zX(){

            sessionStorage.removeItem("uname");


            sessionStorage.removeItem("upwd");

            window.location.href = "login.jsp";
        }
    </script>
    <style>
        *{
            margin: 0;
            padding: 0;
            background-image: url("./denglu/imgs/u=2715254956,1142541802&fm=253&fmt=auto&app=138&f=JPEG.webp");
        }
        .all{
            background-image: none;
            position: absolute;
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            height: 400px;
            width: 400px;
            margin-right:auto;
            margin-left: auto;
            margin-top: auto;
            margin-bottom: auto;
            /*border: #6ab04c 1px solid;*/
        }
        .all div{
            font-size: 50px;
            font-family: "幼圆";
            margin-top: 130px;
            margin-left: 50px;
            background-image: none;
        }
        .all button{
            border-radius: 20px;
            position: absolute;
            font-size: 40px;
            width: 100px;
            bottom: 30px;
            left:0;
            right: 0;
            margin-left: auto;
            margin-right: auto;
            background-image: none;
            opacity: .6;
        }
        a:hover{
            color: #9e9dd7;
        }
    </style>
</head>
<body>
<div class="all">
    <div>是否退出登录</div>
    <button type="button" name="button1" value="注销" onClick="zX()">注销</button>
    <a href="./zhuyemian/morose.html" style="display: block;font-family: '幼圆';text-decoration: none; width: 100px;height: 20px;margin-left: 300px;margin-top: 70px">返回主页面</a>
</div>
</body>
</html>
