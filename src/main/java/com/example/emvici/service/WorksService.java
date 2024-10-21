package com.example.emvici.service;
import com.example.emvici.Admin.Congviec;

import com.example.emvici.Emtipy.User;
import com.example.emvici.Model.congviec.WorkModel;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class WorksService {
    private final WorkModel workModel;

    public WorksService() {
        this.workModel = new WorkModel();

    }

    public void showPageUserList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        // Show list of users
        ResultSet data= workModel.getAllUser();
        List<Congviec> works = new ArrayList<Congviec>();
        while (data.next()) {
            String maNV = data.getString("maNV");
            String hoTen = data.getString("hoTen");
            int  maCa = data.getInt("maCa");
            String tenCa = data.getString("tenCa");
            String thuTrongTuan=data.getString("thuTrongTuan");
            LocalDate ngayDangKy=data.getDate("ngayDangKy").toLocalDate();
            String trangThai = data.getString("trangThai");
            // Tạo đối tượng Congviec
            Congviec work = new Congviec(maNV, hoTen, maCa,tenCa,thuTrongTuan,ngayDangKy, trangThai);
            // Thêm người dùng vào danh sách
            works.add(work);
        }
        // Forward to list.jsp
        request.setAttribute("data", works);
        // Forward to list.jsp
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/tt/work/list.jsp");
        requestDispatcher.forward(request, response);

}
    public void deleteUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
    int maCa=Integer.parseInt(request.getParameter("maCa"));
        workModel.deleteUser(maCa);
        response.sendRedirect(request.getContextPath() + "/admin/work");
    }

    public void showPageAddUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/tt/work/create.jsp");
        requestDispatcher.forward(request, response);

    }
    public void createUser(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        // Get user Data from request
        String maNV = request.getParameter("maNV");
        int maCa = Integer.parseInt(request.getParameter("maCa"));
        LocalDate ngayDangKy=LocalDate.parse(request.getParameter("ngayDangKy"));
        String trangThai = request.getParameter("trangThai");
        // Tạo đối tượng Congviec
        Congviec work = new Congviec(maNV,maCa,ngayDangKy, trangThai);

        System.out.println(work.toString());
        // Thêm người dùng vào cơ sở dữ liệu
        workModel.addUser(work);
        // Chuyển hướng về trang danh sách người dùng
        response.sendRedirect(request.getContextPath() + "/admin/work");
        // Chuyển hướng về trang danh sách người dùng


    }
    public void showPageUpdateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        //get user update from database
        String maNV=request.getParameter("maNV");
        Congviec userUpdate =this.getUserById(maNV);
        request.setAttribute("work",userUpdate);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/work/update.jsp");
        requestDispatcher.forward(request, response);

    }
    public Congviec getUserById(String maNV) throws SQLException {
        ResultSet resultSet = workModel.findUserByID(maNV);
       Congviec work = null;
        while (resultSet.next()) {
            int maCa= Integer.parseInt(resultSet.getString("maCa"));
            LocalDate ngayDangKy= resultSet.getDate("ngayDangKy").toLocalDate();
            String trangThai=resultSet.getString("trangThai");
            // Tạo đối tượng Congviec
            work = new Congviec(maNV,maCa,ngayDangKy, trangThai);

        }
        return work;
    }
    public void updateUser(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        // Get user Data from request
        String maNV = request.getParameter("maNV");
        int maCa = Integer.parseInt(request.getParameter("maCa"));
        LocalDate ngayDangKy=LocalDate.parse(request.getParameter("ngayDangKy"));
        String trangThai = request.getParameter("trangThai");
        // Tạo đối tượng Congviec
        Congviec work = new Congviec(maNV,maCa,ngayDangKy, trangThai);
        // Thêm người dùng vào cơ sở dữ liệu
        workModel.updateUser(work);
        // Chuyển hướng về trang danh sách người dùng
        response.sendRedirect(request.getContextPath() + "/admin/work");
        // Chuyển hướng về trang danh sách
    }



}
