package com.example.emvici.Model.EmployeeSalary;

import com.example.emvici.Admin.Attendance;
import com.example.emvici.Admin.Congviec;
import com.example.emvici.Admin.EmployeeSalary;
import com.example.emvici.Emtipy.User;
import com.example.emvici.Model.admin.Data;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeSalaryModel {
    private final List<EmployeeSalary> list;
    private static Connection connection;

    public EmployeeSalaryModel() {
        this.list =new ArrayList<>();
        // ket noi databa
        connection = Data.getConnection();

    }
    public ResultSet getAllUser() throws SQLException {
        // viet cau lenh truy van
        String sql = "SELECT NV.maNV, NV.hoTen, " +
                "TL.thang, TL.nam, " +
                "TL.tongSoGioLam, TL.luongTheoGio, " +
                "TL.phuCap, TL.tongLuong " +
                "FROM TinhLuong TL " +
                "JOIN NhanVien NV ON TL.maNV = NV.maNV " +
                "ORDER BY TL.nam, TL.thang, NV.maNV";
        //dua cau lenh truy van
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();
        return resultSet;

    }
    public void deleteUser(String maNV) throws SQLException {
        String sql = "DELETE FROM tinhluong WHERE maNV =?";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setString(1 , maNV);
        statement.execute();

    }
    public ResultSet findUserByID(String maNV) throws SQLException {
        String sql = "SELECT * FROM tinhluong WHERE maNV = ? ";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1,maNV);
        // Thực thi truy vấn và trả về kết quả
        ResultSet resultSet = statement.executeQuery();

        return resultSet;
    }
    public  void add(EmployeeSalary employeeSalary) throws SQLException {
        String sql = "INSERT INTO tinhluong(maNV, thang, tongSoGioLam, luongTheoGio, phuCap) VALUES(?,?,?,?,?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setString(1, employeeSalary.getMaNV());
        statement.setInt(2,employeeSalary.getThang());
        statement.setDouble(3, employeeSalary.getTongSoGioLam());
        statement.setDouble(4, employeeSalary.getLuongTheoGio());
        statement.setDouble(5, employeeSalary.getPhuCap());
        statement.execute();
    }
    public void updateUser(EmployeeSalary salary) throws SQLException {
        String sql = "UPDATE tinhluong SET thang=?, tongSoGioLam=?, luongTheoGio=?, phuCap=? WHERE maNV=?";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setInt(1, salary.getThang());
        statement.setDouble(2, salary.getTongSoGioLam());
        statement.setDouble(3, salary.getLuongTheoGio());
        statement.setDouble(4, salary.getPhuCap());
        statement.setString(5, salary.getMaNV());
        statement.executeUpdate();

        System.out.println("ok");
            }

}
