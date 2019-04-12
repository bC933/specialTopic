package com.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Comment {

    private int id;
    private int programId;
    private String title;
    private String external_link;
    private String digest;
    private String issuer;
    private Date uptime;
    private int stick_level;
    private int type;
    private String comment_image;
    private String subtitle;
    private String detail;
    private String title_color;
    private int click_num;
    private int commit;

    public Comment() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProgramId() {
        return programId;
    }

    public void setProgramId(int programId) {
        this.programId = programId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getExternal_link() {
        return external_link;
    }

    public void setExternal_link(String external_link) {
        this.external_link = external_link;
    }

    public String getDigest() {
        return digest;
    }

    public void setDigest(String digest) {
        this.digest = digest;
    }

    public String getIssuer() {
        return issuer;
    }

    public void setIssuer(String issuer) {
        this.issuer = issuer;
    }

    public Date getUptime() {
        return uptime;
    }

    public void setUptime(Date uptime) {
        this.uptime = uptime;
    }

    public int getStick_level() {
        return stick_level;
    }

    public void setStick_level(int stick_level) {
        this.stick_level = stick_level;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getComment_image() {
        return comment_image;
    }

    public void setComment_image(String comment_image) {
        this.comment_image = comment_image;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getTitle_color() {
        return title_color;
    }

    public void setTitle_color(String title_color) {
        this.title_color = title_color;
    }

    public int getClick_num() {
        return click_num;
    }

    public void setClick_num(int click_num) {
        this.click_num = click_num;
    }

    public int getCommit() {
        return commit;
    }

    public void setCommit(int commit) {
        this.commit = commit;
    }


    public int getYear() {

        String[] strNow = new SimpleDateFormat("yyyy-MM-dd").format(uptime).toString().split("-");
        return Integer.parseInt(strNow[0]);
    }

    public int getMonth() {

        String[] strNow = new SimpleDateFormat("yyyy-MM-dd").format(uptime).toString().split("-");
        return Integer.parseInt(strNow[1]);
    }

    public int getDay() {

        String[] strNow = new SimpleDateFormat("yyyy-MM-dd").format(uptime).toString().split("-");
        return Integer.parseInt(strNow[2]);
    }

}
