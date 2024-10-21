package com.example.emvici.Admin;

import java.time.LocalDate; 
import java.util.Date;

public class Congviec {

    private String maNV;
    private String hoTen;
    private int maCa;
    private String tenCa;
    private String thuTrongTuan;
    private LocalDate ngayDangKy;
    private String trangThai;


    public Congviec(String maNV, String hoTen, int maCa, String tenCa,String thuTrongTuan,LocalDate ngayDangKy, String trangThai) {
        this.maNV = maNV;
        this.hoTen = hoTen;
        this.maCa = maCa;
        this.tenCa = tenCa;
this.thuTrongTuan = thuTrongTuan;
        this.ngayDangKy = ngayDangKy;
        this.trangThai = trangThai;
    }
    public Congviec(String maNV, int maCa,LocalDate ngayDangKy, String trangThai){
        this.maNV = maNV;
        this.maCa = maCa;
        this.ngayDangKy = ngayDangKy;
        this.trangThai = trangThai;
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

    public int getMaCa() {
        return maCa;
    }

    public void setMaCa(int maCa) {
        this.maCa = maCa;
    }

    public String getTenCa() {
        return tenCa;
    }

    public void setTenCa(String tenCa) {
        this.tenCa = tenCa;
    }
    public String getThuTrongTuan() {
        return thuTrongTuan;
    }

    public void setThuTrongTuan(String thuTrongTuan) {
        this.thuTrongTuan = thuTrongTuan;
    }


    public LocalDate getNgayDangKy() {
        return ngayDangKy;
    }

    public void setNgayDangKy(LocalDate ngayDangKy) {
        this.ngayDangKy = ngayDangKy;
    }


    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }
}
