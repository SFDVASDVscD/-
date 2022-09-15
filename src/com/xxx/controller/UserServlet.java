package com.xxx.controller;

import com.xxx.entity.vo.MessageModel;
import com.xxx.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class UserServlet extends HttpServlet {
    //实例化UserService对象
    private UserService userService=new UserService();


    /*
    * 常用方法：doGet  doPost   service
    *   doGet：处理客户端的get方式的请求
    *   doPost：处理客户端的post方法的请求
    *   service：根据具体的请求方法调用对用的doGet、doPost方法
    * */

//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        doPost(req,resp);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        //登录功能的实现
//
//        //获取到用户输入的用户名和用户密码，进行登陆业务处理
//        /*
//        * HttpServletRequest：请求对象。Servlet容器会在请求到达后，创建一个request对象，将http请求和相关信息全部封装到该对象中
//        *
//        * */
//    }

    /*用户登录
    *     1.接收客户端的请求（接收参数：姓名、密码）
    *     2.调用service层的方法，返回消息模型对象
    *     3.判断信息模型状态码
    *         状态码失败
    *             将消息模型对象设置到request作用域中，请求转发跳转到login.jsp
    *         状态码成功
    *             将消息模型中的用户信息设置到session作用域中，重定向跳转到index.jsp
    * */
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        //1、接收客户端的请求（接收参数：姓名、密码）
        String uname=request.getParameter("uname");
        String upwd=request.getParameter("upwd");
        //2、调用servi层的方法，返回消息模型对象
        MessageModel messageModel=userService.userLogin(uname,upwd);
        //3、判断消息状态码
        if (messageModel.getCode()==1)//成功
        {
            //将消息模型中的用户信息设置到session作用域中，重定向跳转到index.jsp
            request.getSession().setAttribute("user",messageModel.getObject());//取名user，存对象
            response.sendRedirect("welcome.jsp");
        }else{//失败
            //将消息模型对象设置到request作用域中，请求转发跳转到login.jsp
            request.setAttribute("messageModel",messageModel);
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }
}
