package com.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/11/23 20:49
 * @Project : test
 */
public class News {

    SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
    private int nId;
    private String nLabel;
    private String nContent;
    private Date insertTime;
    private Date updateTime;
    private String currentDate;

    public News(int nId, String nLabel, String nContent, Date insertTime, Date updateTime, String currentDate) {
        this.nId = nId;
        this.nLabel = nLabel;
        this.nContent = nContent;
        this.insertTime = insertTime;
        this.updateTime = updateTime;
        this.currentDate = currentDate;
    }

    public News() {
    }

    public String getCurrentDate() {
        return currentDate;
    }

    public void setCurrentDate(String currentDate) {
        this.currentDate = currentDate;
    }

    public int getnId() {
        return nId;
    }

    public void setnId(int nId) {
        this.nId = nId;
    }

    public String getnLabel() {
        return nLabel;
    }

    public void setnLabel(String nLabel) {
        this.nLabel = nLabel;
    }

    public String getnContent() {
        return nContent;
    }

    public void setnContent(String nContent) {
        this.nContent = nContent;
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
