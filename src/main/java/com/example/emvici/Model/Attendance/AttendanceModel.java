package com.example.emvici.Model.Attendance;

import com.example.emvici.Admin.Attendance;
import com.example.emvici.Model.admin.Data;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AttendanceModel {
    private final List<Attendance> list;
    private static Connection connection;

    public AttendanceModel() {
        //tao list de luu cac attendance
        list = new ArrayList<>();
        connection = Data.getConnection();
    }
    public ResultSet getAllUser() throws SQLException {
        // viet cau lenh truy van
        String sql = "SELECT N.maNV, N.hoTen, C.tenCa, CC.ngayLamViec, C.thuTrongTuan, CC.gioVao, CC.gioRa, CC.soGioLam " +
                "FROM ChamCong CC " +
                "JOIN NhanVien N ON CC.maNV = N.maNV " +
                "JOIN CaLamViec C ON CC.maCa = C.maCa " +
                "ORDER BY CC.ngayLamViec, N.maNV";
        //dua cau lenh truy van
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();
        return resultSet;
    }
    public void deleteUser(String maNV) throws SQLException {
        String sql = "DELETE FROM chamcong WHERE maNV =?";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setString(1 , maNV);
        statement.execute();
    }
    public  void add(Attendance attendance) throws SQLException {
        String sql = "INSERT INTO chamcong (maNV, maCa, ngayLamViec, gioVao, gioRa) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setString(1, attendance.getMaNV());
        statement.setInt(2, attendance.getMaCa());
        statement.setDate(3, Date.valueOf(attendance.getNgayLamViec()));
        statement.setTime(4, attendance.getGioVao());
        statement.setTime(5, attendance.getGioRa());
        // Thực thi truy vấn
        statement.execute();


    }
    public ResultSet findUserByID(String maNV) throws SQLException {
        String sql = "SELECT * FROM ChamCong WHERE maNV = ? ";
        PreparedStatement statement = connection.prepareStatement(sql);

        statement.setString(1,maNV);
        // Thực thi truy vấn và trả về kết quả
        ResultSet resultSet = statement.executeQuery();

        return resultSet;
    }
}