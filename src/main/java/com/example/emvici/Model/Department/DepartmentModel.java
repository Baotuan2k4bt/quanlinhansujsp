package com.example.emvici.Model.Department;

import com.example.emvici.Admin.Congviec;
import com.example.emvici.Admin.phongBan;
import com.example.emvici.Model.admin.Data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DepartmentModel {
    private final List<phongBan> list;
    private static Connection connection;

    public DepartmentModel() {
        this.list =new ArrayList<>();
        // ket noi databa
        connection = Data.getConnection();

    }
    public ResultSet getAllUser() throws SQLException {
        // viet cau lenh truy van
        String sql = "SELECT * FROM phongban";
        //dua cau lenh truy van
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();
        return resultSet;

    }

    public void deleteUser(int maPhongBan) throws SQLException {
        String sql = "DELETE FROM phongban WHERE maPhongBan= ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setInt(1,maPhongBan);
        statement.execute();
    }
    }



