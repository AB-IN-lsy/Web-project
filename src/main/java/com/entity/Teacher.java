package com.entity;

import java.util.Date;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/11/21 15:40
 * @Project : test
 */
public class Teacher {
    private int tId;
    private String tName;
    private String tUniversity;
    private String tTitle;
    private String tPic;
    private Date insertTime;
    private Date updateTime;



    public Teacher(int tId, String tName, String tUniversity, String tTitle, String tPic, Date insertTime, Date updateTime) {
        this.tId = tId;
        this.tName = tName;
        this.tUniversity = tUniversity;
        this.tTitle = tTitle;
        this.tPic = tPic;
        this.insertTime = insertTime;
        this.updateTime = updateTime;
    }
    public Teacher()
    {

    }
    public String gettUniversity() {
        return tUniversity;
    }

    public void settUniversity(String tUniversity) {
        this.tUniversity = tUniversity;
    }
    public int gettId() {
        return tId;
    }

    public void settId(int tId) {
        this.tId = tId;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }

    public String gettTitle() {
        return tTitle;
    }

    public void settTitle(String tTitle) {
        this.tTitle = tTitle;
    }

    public String gettPic() {
        return tPic;
    }

    public void settPic(String tPic) {
        this.tPic = tPic;
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
