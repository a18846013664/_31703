package com.vo;

public class Room {
    private String id;
    private int rnumber;
    private String rvarious;
    private String rintro;
    private double rprice;
    private String rfiles;
    private int rnow;

    public int getRnow() {
        return rnow;
    }

    public void setRnow(int rnow) {
        this.rnow = rnow;
    }

    public String getRfiles() {
        return rfiles;
    }

    public void setRfiles(String rfiles) {
        this.rfiles = rfiles;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getRnumber() {
        return rnumber;
    }

    public void setRnumber(int rnumber) {
        this.rnumber = rnumber;
    }

    public String getRvarious() {
        return rvarious;
    }

    public void setRvarious(String rvarious) {
        this.rvarious = rvarious;
    }

    public String getRintro() {
        return rintro;
    }

    public void setRintro(String rintro) {
        this.rintro = rintro;
    }

    public double getRprice() {
        return rprice;
    }

    public void setRprice(double rprice) {
        this.rprice = rprice;
    }
}
