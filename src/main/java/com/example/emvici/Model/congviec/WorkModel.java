package com.example.emvici.Model.congviec;

import com.example.emvici.Admin.Admin;
import com.example.emvici.Admin.Congviec;
import com.example.emvici.Model.admin.Data;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class WorkModel {
    private final List<Congviec> list;
    private static Connection connection;

    public WorkModel() {
        this.list =new ArrayList<>();
        // ket noi databa
        connection = Data.getConnection();

    }
    public ResultSet getAllUser() throws SQLException {
        // viet cau lenh truy van
        String sql = "SELECT N.maNV, N.hoTen, C.maCa, C.tenCa, C.thuTrongTuan, DK.ngayDangKy, DK.trangThai " +
                "FROM NhanVien N " +
                "JOIN DangKyCa DK ON N.maNV = DK.maNV " +
                "JOIN CaLamViec C ON DK.maCa = C.maCa " +
                "ORDER BY N.maNV, DK.ngayDangKy";
        //dua cau lenh truy van
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();
        return resultSet;

    }

    public void deleteUser(int maCa) throws SQLException {
        String sql = "DELETE FROM DangKyCa WHERE maCa= ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setInt(1 , maCa);
                statement.execute();
    }
    public  static void addUser(Congviec work) throws SQLException {
        String sql = "INSERT INTO DangKyCa(maNV,maCa,ngayDangKy,trangThai) VALUES (?,?,?,?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setString(1, work.getMaNV());
        statement.setInt(2, work.getMaCa());
        statement.setDate(  3, Date.valueOf(work.getNgayDangKy()));
        statement.setString(4,work.getTrangThai());
        //thực thi câu lệnh
        statement.execute();
        System.out.println("ok");

    }
    public ResultSet findUserByID(String maNV) throws SQLException {
        String sql = "SELECT * FROM DangKyCa WHERE maNV = ? ";
        PreparedStatement statement = connection.prepareStatement(sql);

        statement.setString(1,maNV);
        // Thực thi truy vấn và trả về kết quả
        ResultSet resultSet = statement.executeQuery();

        return resultSet;
    }
    public void updateUser(Congviec work) throws SQLException {
        String sql = "UPDATE DangKyCa SET maNV=?, maCa=?, ngayDangKy=?, trangThai=? WHERE maNV=?";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setString(1, work.getMaNV());
        statement.setInt(2, work.getMaCa());
        statement.setDate(3, Date.valueOf(work.getNgayDangKy()));
        statement.setString(4, work.getTrangThai());
        statement.setString(5, work.getMaNV());
        //thực thi câu lệnh
        statement.execute();
        System.out.println("ok");
    }

}





