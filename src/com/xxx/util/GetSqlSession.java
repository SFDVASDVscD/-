package com.xxx.util;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.io.IOException;
import java.io.InputStream;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class GetSqlSession {
//    获取sqlsession对象
    public static SqlSession createSqlSession(){
        SqlSessionFactory sqlSessionFactory=null;
        InputStream input=null;
        SqlSession session=null;
        try {
            //获取mybatis的环境配置文件
            String resource="mybatis-config.xml";
            //以流的方式获取recource（mybatis的环境配置文件）
            input= Resources.getResourceAsStream(resource);
            //创建会话工厂
            sqlSessionFactory=new SqlSessionFactoryBuilder().build(input);
            //通过工厂得到Sqlsession
            session=sqlSessionFactory.openSession();
            return session;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
    public static void main(String[] args){
        System.out.println(createSqlSession());
    }
}
