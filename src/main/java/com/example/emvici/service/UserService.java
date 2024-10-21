package com.example.emvici.service;

import com.example.emvici.Emtipy.User;
import com.example.emvici.Model.User.UserModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserService {
    private final UserModel userModel;

    public UserService() {
        this.userModel = new UserModel();

    }

    public void showPageUserList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        // Show list of users
        ResultSet data = userModel.getAllUser();
        List<User> users = new ArrayList<>();
        while (data.next()) {
            int id = data.getInt("id");
            String maSV = data.getString("maSV");
            String hoDem = data.getString("hoDem");
            String ten = data.getString("ten");
            String diaChi = data.getString("diaChi");
            User user = new User(id, maSV, hoDem, ten, diaChi);
            users.add(user);

        }
        request.setAttribute("data", users);
        // Forward to list.jsp
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/users/list.jsp");
        requestDispatcher.forward(request, response);
    }

    public void deleteUser(HttpServletRequest request, HttpServletResponse respons) throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        userModel.deleteUser(id);
        respons.sendRedirect(request.getContextPath() + "/admin/users");
    }

    public void showPageAddUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/users/create.jsp");
        requestDispatcher.forward(request, response);
    }

    public void createUser(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        // Get user Data from request
        int id = Integer.parseInt(request.getParameter("id"));
        String maSV = request.getParameter("maSV");
        String hoDem = request.getParameter("hoDem");
        String ten = request.getParameter("ten");
        String diaChi = request.getParameter("diaChi");
        User user = new User(id, maSV, hoDem, ten, diaChi);
        // Lưu User vào cơ sở dữ liệu thông qua model
        userModel.addUser(user);
        // Chuyển hướng về trang danh sách người dùng
        response.sendRedirect(request.getContextPath() +"/admin/users");
    }

    public void showPageUpdateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        //get user update from database
        int id = Integer.parseInt(request.getParameter("id"));
        User userUpdate = this.getUserById(id);
        request.setAttribute("user", userUpdate);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/users/update.jsp");
        requestDispatcher.forward(request, response);
    }

    public User getUserById(int id) throws SQLException {
        ResultSet resultSet = userModel.findUserByID(id);
        User user = null;
        while (resultSet.next()) {
            String maSV = resultSet.getString("maSV");
            String hoDem = resultSet.getString("hoDem");
            String ten = resultSet.getString("ten");
            String diaChi = resultSet.getString("diaChi");
            user = new User(id, maSV, hoDem, ten, diaChi);
        }
        return user;
    }
    public void updateUser(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        // Get user Data from request
        int id = Integer.parseInt(request.getParameter("id"));
        String maSV = request.getParameter("maSV");
        String hoDem = request.getParameter("hoDem");
        String ten = request.getParameter("ten");
        String diaChi = request.getParameter("diaChi");
        User user = new User(id, maSV, hoDem, ten, diaChi);
        // Lưu User vào cơ sở dữ liệu thông qua model
        userModel.updateUser(user);
        // Chuyển hướng về trang danh sách người dùng
        response.sendRedirect(request.getContextPath()+"/admin/users");
    }
}


