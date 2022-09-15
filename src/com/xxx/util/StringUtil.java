package com.xxx.util;

//字符串工具类——判断空字符串
public class StringUtil {
    public static boolean isEmpty(String str){
        if(str==null||"".equals(str.trim())){
            return true;
        }//判断字符串是否为空，如果为空返回true，如果不为空返回false
        return  false;
    }
}
