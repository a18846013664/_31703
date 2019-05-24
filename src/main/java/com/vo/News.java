package com.vo;

public class News {
    private int id;
    private String newsname;
    private String newsin;
    private String date;
    private String file;

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNewsname() {
        return newsname;
    }

    public void setNewsname(String newsname) {
        this.newsname = newsname;
    }

    public String getNewsin() {
        return newsin;
    }

    public void setNewsin(String newsin) {
        this.newsin = newsin;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
