package com.xxx.entity;

//用户实体类User
public class User {
    private Integer userId;//用户编号
    private String userName;//用户名称
    private  String userPwd;//用户密码
    private  Integer userAge;//用户年龄
    private  String UserBirthday;
    private  String UserSex;
    private  String UserAddress;
    private String User_Email;
    private String UserMobile;
    private  int UserStatus;

    public  User(){}
    //构造方法
    public User(Integer userId, String userName, String userPwd, Integer userAge, String userBirthday, String userSex, String userAddress, String user_Email, String userMobile, int userStatus) {
        this.userId = userId;
        this.userName = userName;
        this.userPwd = userPwd;
        this.userAge = userAge;
        this.UserBirthday = userBirthday;
        this.UserSex = userSex;
        this.UserAddress = userAddress;
        this.User_Email = user_Email;
        this.UserMobile = userMobile;
        this.UserStatus = userStatus;
    }

    public User(String userName, String userPWD) {
        this.userName=userName;
        this.userPwd=userPWD;
    }
    public User(String username,String userPwd,String userSex,String user_Email,String userMobile){
        this.userName=username;
        this.userPwd=userPwd;
        this.UserSex=userSex;
        this.User_Email=user_Email;
        this.UserMobile=userMobile;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public Integer getUserAge() {
        return userAge;
    }

    public void setUserAge(Integer userAge) {
        this.userAge = userAge;
    }

    public String getUserBirthday() {
        return UserBirthday;
    }

    public void setUserBirthday(String userBirthday) {
        UserBirthday = userBirthday;
    }

    public String getUserSex() {
        return UserSex;
    }

    public void setUserSex(String userSex) {
        UserSex = userSex;
    }

    public String getUserAddress() {
        return UserAddress;
    }

    public void setUserAddress(String userAddress) {
        UserAddress = userAddress;
    }

    public String getUser_Email() {
        return User_Email;
    }

    public void setUser_Email(String user_Email) {
        User_Email = user_Email;
    }

    public String getUserMobile() {
        return UserMobile;
    }

    public void setUserMobile(String userMobile) {
        UserMobile = userMobile;
    }

    public int getUserStatus() {
        return UserStatus;
    }

    public void setUserStatus(int userStatus) {
        UserStatus = userStatus;
    }
}
