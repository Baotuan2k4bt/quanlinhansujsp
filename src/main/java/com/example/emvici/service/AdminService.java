package com.example.emvici.service;

import com.example.emvici.Admin.Admin;
import com.example.emvici.Model.admin.AdminModel;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class AdminService {
    private final AdminModel adminModel;

    public AdminService() {
        this.adminModel = new AdminModel();

    }
    public void showPageUserList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        // Show list of users
        ResultSet data = adminModel.getAllUser();
        List<Admin> users= new ArrayList<>();
        while (data.next()) {
            String maNV = data.getString("maNV");
            String hoTen=data.getString("hoTen");
            LocalDate  ngaySinh= data.getDate("ngaySinh").toLocalDate();
            String chucVu=data.getString("chucvu");
            String maphongBan=data.getString("maphongBan");
            String trangThai=data.getString("trangThai");
            String email=data.getString("email");
            String phone=data.getString("phone");
            String diaChi= data.getString("diaChi");
            String gioiTinh=data.getString("gioiTinh");
            Admin user= new Admin(maNV,hoTen,ngaySinh,chucVu,maphongBan,trangThai,email,phone,diaChi,gioiTinh);
            users.add(user);

        }
        request.setAttribute("data", users);
        // Forward to list.jsp
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/tt/admin/listAdmin.jsp");
        requestDispatcher.forward(request, response);
    }
    public void deleteUser(HttpServletRequest request, HttpServletResponse respons) throws SQLException, IOException {
        String maNV = request.getParameter("maNV");
        adminModel.deleteUser(maNV);
        respons.sendRedirect(request.getContextPath() + "/admin/admins");
    }

    public void showPageAddUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/tt/admin/create.jsp");
        requestDispatcher.forward(request, response);
    }
    public void createUser(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        // Get user Data from request
        String maNV=request.getParameter("ma-nhan-vien");
        String hoTen=request.getParameter("ho-va-ten");
        String chucVu=request.getParameter("chuc-vu");
        String maphongBan=request.getParameter("phong-ban");
        String trangThai=request.getParameter("trang-thai");
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        String diaChi=request.getParameter("dia-chi");
        String gioiTinh=request.getParameter("gioi-tinh");
        LocalDate ngaySinh=LocalDate.parse(request.getParameter("ngay-sinh"));
        // Kiểm tra nếu chuỗi không rỗng

        Admin user = new Admin(maNV,hoTen,ngaySinh,chucVu,maphongBan,trangThai,email,phone, diaChi,gioiTinh);
        // Lưu User vào cơ sở dữ liệu thông qua model
      adminModel.addUser(user);
        // Chuyển hướng về trang danh sách người dùng
        response.sendRedirect(request.getContextPath() +"/admin/admins");

    }
    public void showPageUpdateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        //get user update from database
       String maNV=request.getParameter("maNV");
       Admin userUpdate =this.getUserById(maNV);
        request.setAttribute("user",userUpdate);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/manager/update.jsp");
        requestDispatcher.forward(request, response);
    }
    public Admin getUserById(String maNV) throws SQLException {
        ResultSet resultSet = AdminModel.findUserByID(maNV);
        Admin user = null;
        while (resultSet.next()) {
            String hoTen=resultSet.getString("hoTen");
            LocalDate  ngaySinh= resultSet.getDate("ngaySinh").toLocalDate();
            String chucVu=resultSet.getString("chucVu");
            String maphongBan=resultSet.getString("maphongBan");
            String trangThai=resultSet.getString("trangThai");
            String email=resultSet.getString("email");
            String phone=resultSet.getString("phone");
            String diaChi=resultSet.getString("diaChi");
            String gioiTinh=resultSet.getString("gioiTinh");
            user = new Admin(maNV,hoTen,ngaySinh,chucVu,maphongBan,trangThai,email,phone,diaChi,gioiTinh);
        }

        return user;
    }
    public void updateUser(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        // Get user Data from request
        String maNV=request.getParameter("maNV");
        String hoTen=request.getParameter("ho-va-ten");
        LocalDate ngaySinh=LocalDate.parse(request.getParameter("ngay-sinh"));
        String chucVu=request.getParameter("chuc-vu");
        String maphongBan=request.getParameter("phong-ban");
        String trangThai=request.getParameter("trang-thai");
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        String diaChi=request.getParameter("dia-chi");
        String gioiTinh=request.getParameter("gioi-tinh");
        Admin user = new Admin(maNV,hoTen,ngaySinh,chucVu,maphongBan,trangThai,email,phone,diaChi,gioiTinh);
        System.out.println(user.toString());
        adminModel.updateUser(user);
        // Chuyển hướng về trang danh sách người dùng
        response.sendRedirect(request.getContextPath()+ "/admin/admins");


    }
}
