package com.example.emvici.Model.admin;
import com.example.emvici.Admin.Admin;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AdminModel {
    private final List<Admin> list;
    private static  Connection connection;

    public AdminModel() {
        list = new ArrayList<>();
        connection = Data.getConnection();
    }
    public ResultSet getAllUser() throws SQLException {
        // viet cau lenh truy van
        String sql = "SELECT * FROM nhanvien";
        //dua cau lenh truy van
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();
        return resultSet;
    }
    public void deleteUser(String maNV) throws SQLException {
        String sql = "DELETE FROM nhanvien WHERE maNV = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setString(1, maNV);
        statement.execute();

    }
    public static void addUser(Admin user) throws SQLException {
        String sql = "INSERT INTO nhanvien (maNV, hoTen, ngaySinh,chucVu,maphongBan ,trangThai,email,phone,diaChi,gioiTinh) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setString(1, user.getMaNV());
        statement.setString(2, user.getHoTen());
        statement.setDate(  3, Date.valueOf(user.getNgaySinh()));
        statement.setString(4, user.getChucVu());
        statement.setString(5, user.getMaphongBan());
        statement.setString(6,user.getTrangThai());
        statement.setString(7,user.getEmail());
        statement.setString(8,user.getPhone());
        statement.setString(9,user.getDiaChi());
        statement.setString(10,user.getGioiTinh());
        //thực thi câu lệnh
        statement.execute();
        System.out.println("oke");
    }

    public static ResultSet findUserByID(String maNV) throws SQLException {
        String sql = "SELECT * FROM nhanvien WHERE maNV= ?";
        PreparedStatement statement = connection.prepareStatement(sql);

        statement.setString(1, maNV);

        // Thực thi truy vấn và trả về kết quả
        ResultSet resultSet = statement.executeQuery();
        return resultSet;
    }

    public void updateUser(Admin user) throws SQLException {
        String sql = "UPDATE nhanvien SET hoTen=?, ngaySinh=?, chucVu=?, trangThai=?, gioiTinh=? WHERE maNV=?";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setString(1, user.getHoTen());
        statement.setDate(2, Date.valueOf(user.getNgaySinh()));
        statement.setString(3, user.getChucVu());
//        statement.setString(4, user.getMaphongBan());
        statement.setString(4, user.getTrangThai());
        statement.setString(5, user.getGioiTinh());
        statement.setString(6, user.getMaNV());

        //thực thi câu lệnh
        statement.execute();
        System.out.println("oke");
    }





}
