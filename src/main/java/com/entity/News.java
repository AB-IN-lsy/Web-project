package com.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/11/23 20:49
 * @Project : test
 */
public class News {
    private int nId;
    private String nAuthor;
    private String nContent;
    private String nEmail;
    private String nLabel;
    private Date insertTime;
    private Date updateTime;

    public News(int nId, String nAuthor, String nContent, String nEmail, String nLabel, Date insertTime, Date updateTime) {
        this.nId = nId;
        this.nAuthor = nAuthor;
        this.nContent = nContent;
        this.nEmail = nEmail;
        this.nLabel = nLabel;
        this.insertTime = insertTime;
        this.updateTime = updateTime;
    }

    public News() {
    }

    public String getnAuthor() {
        return nAuthor;
    }

    public void setnAuthor(String nAuthor) {
        this.nAuthor = nAuthor;
    }

    public String getnEmail() {
        return nEmail;
    }

    public void setnEmail(String nEmail) {
        this.nEmail = nEmail;
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
