package com.example.emvici.Admin;

import java.sql.Time;
import java.time.LocalDate;
import java.util.Date;

public class Attendance {
    private int maChamCong;
    private String maNV;
    private String hoTen;
    private int maCa;
    private String tenCa;
    private LocalDate ngayLamViec;
    private Time gioVao;
    private Time gioRa;
    private double soGioLam;
    // Constructor with LocalDateTime
    // Constructor without maCa, using LocalDateTime
    // Getters and setters

    public Attendance(int maChamCong, String maNV, String hoTen, int maCa, String tenCa, LocalDate ngayLamViec, Time gioVao, Time gioRa, double soGioLam) {
        this.maChamCong = maChamCong;
        this.maNV = maNV;
        this.hoTen = hoTen;
        this.maCa = maCa;
        this.tenCa = tenCa;
        this.ngayLamViec = ngayLamViec;
        this.gioVao = gioVao;
        this.gioRa = gioRa;
        this.soGioLam = soGioLam;
    }
    public Attendance(String maNV, String hoTen, String tenCa, LocalDate ngayLamViec, Time gioVao, Time gioRa, double soGioLam) {
        this.maNV = maNV;
        this.hoTen = hoTen;
        this.tenCa = tenCa;
        this.ngayLamViec = ngayLamViec;
        this.gioVao = gioVao;
        this.gioRa = gioRa;
        this.soGioLam = soGioLam;

    }

    public Attendance(String maNV, int maCa, LocalDate ngayLamViec, Time gioVao, Time gioRa, double soGioLam) {
        this.maNV = maNV;
        this.maCa = maCa;
        this.ngayLamViec = ngayLamViec;
        this.gioVao = gioVao;
        this.gioRa = gioRa;
        this.soGioLam = soGioLam;
    }

    public int getMaChamCong() {
        return maChamCong;
    }

    public void setMaChamCong(int maChamCong) {
        this.maChamCong = maChamCong;
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

    public LocalDate getNgayLamViec() {
        return ngayLamViec;
    }

    public void setNgayLamViec(LocalDate ngayLamViec) {
        this.ngayLamViec = ngayLamViec;
    }

    public Time getGioVao() {
        return gioVao;
    }

    public void setGioVao(Time gioVao) {
        this.gioVao = gioVao;
    }

    public Time getGioRa() {
        return gioRa;
    }

    public void setGioRa(Time gioRa) {
        this.gioRa = gioRa;
    }

    public double getSoGioLam() {
        return soGioLam;
    }

    public void setSoGioLam(double soGioLam) {
        this.soGioLam = soGioLam;
    }

}
