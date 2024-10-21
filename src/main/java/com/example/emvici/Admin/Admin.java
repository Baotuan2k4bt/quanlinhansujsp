package com.example.emvici.Admin;

import java.time.LocalDate;
public class Admin {
    private String maNV;
    private String hoTen;
    private LocalDate ngaySinh;
    private String chucVu;
    private String maphongBan;
    private String trangThai;
    private String email;
    private String phone;
    private String diaChi;
    private String gioiTinh;
public Admin( String hoTen, LocalDate ngaySinh, String chucVu, String maphongBan, String trangThai ,String gioiTinh  ){

    this.hoTen = hoTen;
    this.ngaySinh = ngaySinh;
    this.chucVu = chucVu;
    this.maphongBan = maphongBan;
    this.trangThai = trangThai;
    this.gioiTinh=gioiTinh;

}

    public Admin(String maNV, String hoTen, LocalDate ngaySinh, String chucVu, String maphongBan, String trangThai, String email, String phone, String diaChi, String gioiTinh) {
        this.maNV = maNV;
        this.hoTen = hoTen;
        this.ngaySinh = ngaySinh;
        this.chucVu = chucVu;
        this.maphongBan = maphongBan;
        this.trangThai = trangThai;
        this.email = email;
        this.phone = phone;
        this.diaChi = diaChi;
        this.gioiTinh=gioiTinh;
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

    public LocalDate getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(LocalDate ngaySinh) {
        this.ngaySinh = ngaySinh;
    }



    public String getChucVu() {
        return chucVu;
    }

    public void setChucVu(String chucVu) {
        this.chucVu = chucVu;
    }

    public void setMaphongBan(String maphongBan) {

        this.maphongBan = maphongBan;
    }

    public String getMaphongBan() {
        return maphongBan;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }
}
