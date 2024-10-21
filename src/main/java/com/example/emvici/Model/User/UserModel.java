package com.example.emvici.Model.User;

import com.example.emvici.Emtipy.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserModel {
    private final List<User> list;
    private final Connection connection;

    public UserModel() {
        list = new ArrayList<User>();
        connection = DataBase.getConnection();

    }

    public ResultSet getAllUser() throws SQLException {
        // viet cau lenh truy van
        String sql = "SELECT * FROM student";
        //dua cau lenh truy van
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();
        return resultSet;

    }

    public void deleteUser(int id) throws SQLException {
        String sql = "DELETE FROM student WHERE id = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setInt(1, id);
        statement.execute();

    }

    public void addUser(User user) throws SQLException {
        String sql = "INSERT INTO student (id,maSV, hoDem, ten, diaChi) VALUES (?,?,?,?,?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setInt(1, user.getId());
        statement.setString(2, user.getMaSV());
        statement.setString(3, user.getHoDem());
        statement.setString(4, user.getTen());
        statement.setString(5, user.getDiaChi());
        //thực thi câu lệnh
        statement.execute();

    }
    public ResultSet findUserByID(int id) throws SQLException {
        String sql = "SELECT * FROM student WHERE id = ?";
        PreparedStatement statement = connection.prepareStatement(sql);

        // Thay thế tham số dấu ? trong câu truy vấn bằng giá trị id
        statement.setInt(1, id);

        // Thực thi truy vấn và trả về kết quả
        ResultSet resultSet = statement.executeQuery();
        return resultSet;
    }

    public void updateUser(User user) throws SQLException {
        String sql="UPDATE student SET MaSV=?,HoDem=?,Ten=?,DiaChi=? WHERE id=?";
        PreparedStatement statement = connection.prepareStatement(sql);
        //thay thế câu lệnh
        statement.setInt(5, user.getId());
        statement.setString(1, user.getMaSV());
        statement.setString(2, user.getHoDem());
        statement.setString(3, user.getTen());
        statement.setString(4, user.getDiaChi());
        //thực thi câu lệnh
        statement.execute();
    }

}
