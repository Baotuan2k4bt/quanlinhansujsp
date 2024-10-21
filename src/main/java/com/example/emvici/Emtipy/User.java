package com.example.emvici.Emtipy;

public class User {
    private int id;
    private String maSV;
    private String hoDem;
    private String ten;
    private String diaChi;

    public User(String maSV, String hoDem, String ten, String diaChi){
        this.maSV = maSV;
        this.hoDem = hoDem;
        this.ten = ten;
        this.diaChi = diaChi;

    }
    public User(int id, String maSV, String hoDem, String ten, String diaChi) {
        this.id = id;
        this.maSV = maSV;
        this.hoDem = hoDem;
        this.ten = ten;
        this.diaChi = diaChi;
    }

    // Getters and setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMaSV() {
        return maSV;
    }

    public void setMaSV(String maSV) {
        this.maSV = maSV;
    }

    public String getHoDem() {
        return hoDem;
    }

    public void setHoDem(String hoDem) {
        this.hoDem = hoDem;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }
}