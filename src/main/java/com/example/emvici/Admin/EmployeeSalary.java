package com.example.emvici.Admin;

public class EmployeeSalary {
    private String maNV;
    private String hoTen;
    private double tongSoGioLam;
    private double luongTheoGio;
    private int thang;
    private double tongLuong;
    private double phuCap;


    public EmployeeSalary(String maNV, int thang, double tongSoGioLam, double luongTheoGio, double phuCap, double tongLuong) {
        this.maNV = maNV;
        this.thang = thang;
        this.tongSoGioLam = tongSoGioLam;
        this.luongTheoGio = luongTheoGio;
        this.phuCap = phuCap;
        this.tongLuong = tongLuong;
    }

    public EmployeeSalary(String maNV, String hoTen, double tongSoGioLam, double luongTheoGio, int thang, double tongLuong) {
        this.maNV = maNV;
        this.hoTen = hoTen;

        this.tongSoGioLam = tongSoGioLam;
        this.luongTheoGio = luongTheoGio;
        this.thang = thang;
        this.tongLuong = tongLuong;
    }

    public EmployeeSalary(String maNV, String hoTen, double tongSoGioLam, double luongTheoGio, int thang, double phuCap, double tongLuong) {
    }

    public EmployeeSalary(String maNV, int thang, double tongSoGioLam, double luongTheoGio, double phuCap) {
        this.maNV = maNV;
        this.thang = thang;
        this.tongSoGioLam = tongSoGioLam;
        this.luongTheoGio = luongTheoGio;
        this.phuCap = phuCap;
    }


    public String getMaNV() {
        return maNV;
    }

    public void setMaNV(String maNV) {
        this.maNV = maNV;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public double getTongSoGioLam() {
        return tongSoGioLam;
    }

    public void setTongSoGioLam(double tongSoGioLam) {
        this.tongSoGioLam = tongSoGioLam;
    }

    public double getLuongTheoGio() {
        return luongTheoGio;
    }

    public void setLuongTheoGio(double luongTheoGio) {
        this.luongTheoGio = luongTheoGio;
    }

    public int getThang() {
        return thang;
    }

    public void setThang(int thang) {
        this.thang = thang;
    }

    public double getPhuCap() {
        return phuCap;
    }

    public void setPhuCap(double phuCap) {
        this.phuCap = phuCap;
    }

    public double getTongLuong() {
        return tongLuong;
    }

    public void setTongLuong(double tongLuong) {
        this.tongLuong = tongLuong;
    }
}
