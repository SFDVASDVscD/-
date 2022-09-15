package com.xxx.mapper;

import com.xxx.entity.User;

//用户接口类
public interface UserMapper {
    public User queryUserByName(String userName);
}
