package com.xxx.service;


import java.sql.*;

import com.xxx.entity.User;
import com.xxx.entity.vo.MessageModel;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserRegist {

        // 用户注册
        public static MessageModel registing(User user) throws SQLException, ClassNotFoundException {
            MessageModel messageModel = new MessageModel();
            messageModel.setObject(user);

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn=null;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ylxznbl?serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8&useSSL=false&allowPublicKeyRetrieval=true","root","yanglanxin1210");

            Statement stmt = null;
            stmt = conn.createStatement();
            String SQL="select username from tb_user where username='%\"+user.getUsername()+\"%'";
            ResultSet rs = stmt.executeQuery(SQL);

            if (rs.next()) {
                rs.close();
                messageModel.setMsg("该用户已存在！");
                return messageModel;
            }
            else{
                String sql = "insert into tb_user(username,userPwd,user_Email,userSex,userMobile) values (?,?,?,?,?,?,?)";

                int code= stmt.executeUpdate(sql);
                messageModel.setCode(code);

                PreparedStatement stmp=conn.prepareStatement(sql);

                String username=user.getUserName();

                String password=user.getUserPwd();

                String email=user.getUser_Email();

                String sex=user.getUserSex();

                String mobile=user.getUserMobile();

                stmp.setString(1,username);

                stmp.setString(2,password);

                stmp.setString(3,email);

                stmp.setString(4,sex);

                stmp.setString(5,mobile);

                int n=stmp.executeUpdate();

                if(n==1){
                    messageModel.setMsg("数据插入成功！");
                }

                else {
                    messageModel.setMsg("数据插入失败！");

                }
        }
            messageModel.setObject(user);
            return messageModel;
        }
}
