package com.entity;

import java.util.Date;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/11/21 15:42
 * @Project : test
 */
public class Major {
    private int mId;
    private String mLabel;
    private String mContent;
    private String mName;
    private String mPic;
    private Date insertTime;
    private Date updateTime;

    public Major(int mId, String mName, String mLabel, String mPic, String mContent, Date insertTime, Date updateTime) {
        this.mId = mId;
        this.mPic = mPic;
        this.mLabel = mLabel;
        this.mContent = mContent;
        this.mName = mName;
        this.insertTime = insertTime;
        this.updateTime = updateTime;
    }

    public Major() {
    }

    public String getmPic() {
        return mPic;
    }

    public void setmPic(String mPic) {
        this.mPic = mPic;
    }

    public int getmId() {
        return mId;
    }

    public void setmId(int mId) {
        this.mId = mId;
    }

    public String getmLabel() {
        return mLabel;
    }

    public void setmLabel(String mLabel) {
        this.mLabel = mLabel;
    }

    public String getmContent() {
        return mContent;
    }

    public void setmContent(String mContent) {
        this.mContent = mContent;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
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
