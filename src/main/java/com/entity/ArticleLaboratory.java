package com.entity;

import java.util.Date;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/11/22 16:38
 * @Project : test
 */
public class ArticleLaboratory {
    private int alId;
    private String alLabel;
    private String alContent;
    private Date insertTime;
    private Date updateTime;

    public ArticleLaboratory(int alId, String alLabel, String alContent, Date insertTime, Date updateTime) {
        this.alId = alId;
        this.alLabel = alLabel;
        this.alContent = alContent;
        this.insertTime = insertTime;
        this.updateTime = updateTime;
    }

    public ArticleLaboratory() {
    }

    public int getAlId() {
        return alId;
    }

    public void setAlId(int alId) {
        this.alId = alId;
    }

    public String getAlLabel() {
        return alLabel;
    }

    public void setAlLabel(String alLabel) {
        this.alLabel = alLabel;
    }

    public String getAlContent() {
        return alContent;
    }

    public void setAlContent(String alContent) {
        this.alContent = alContent;
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
