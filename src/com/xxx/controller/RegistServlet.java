package com.xxx.controller;


import com.xxx.entity.User;
import com.xxx.entity.vo.MessageModel;
import com.xxx.service.UserRegist;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/regist")
public class RegistServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        //1、接收客户端的请求（接收参数：姓名、密码）
        String name=request.getParameter("username");
        String password=request.getParameter("password");
        String sex=request.getParameter("sex");
        String email=request.getParameter("userEmail");
        String mobile=request.getParameter("userMobile");

        User user=new User(name,password,sex,email,mobile);

        //2、调用servi层的方法，返回消息模型对象
        MessageModel messageModel;
        messageModel = null;
        try {
            messageModel = UserRegist.registing(user);
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
        //判断消息状态码
        if (messageModel.getCode()==1)//成功
        {
            //将消息模型中的用户信息设置到session作用域中，重定向跳转到index.jsp
            request.getSession().setAttribute("user",messageModel.getObject());//取名user，存对象
            response.sendRedirect("login.jsp");
        }else{//失败
            //将消息模型对象设置到request作用域中，请求转发跳转到login.jsp
            request.setAttribute("messageModel",messageModel);
            request.getRequestDispatcher("regist.jsp").forward(request,response);
        }
    }
}
