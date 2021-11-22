/*
 * @Author: NEFU AB-IN
 * @Date: 2021-11-17 21:02:19
 * @FilePath: \test\src\main\java\com\entity\User.java
 * @LastEditTime: 2021-11-20 20:57:15
 */
package com.entity;

import java.util.Date;

public class User {
    private int uId;
    private String uAccount;
    private String uPasswd;
    private int uRole;
    private Date insertTime;
    private Date updateTime;

    public User(int uId, String uAccount, String uPasswd, int uRole, Date insertTime, Date updateTime) {
        this.uId = uId;
        this.uAccount = uAccount;
        this.uPasswd = uPasswd;
        this.uRole = uRole;
        this.insertTime = insertTime;
        this.updateTime = updateTime;
    }

    public User() {

    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public String getuAccount() {
        return uAccount;
    }

    public void setuAccount(String uAccount) {
        this.uAccount = uAccount;
    }

    public String getuPasswd() {
        return uPasswd;
    }

    public void setuPasswd(String uPasswd) {
        this.uPasswd = uPasswd;
    }

    public int getuRole() {
        return uRole;
    }

    public void setuRole(int uRole) {
        this.uRole = uRole;
    }

    public Date getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
