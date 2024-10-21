package com.example.emvici.service;

import com.example.emvici.Admin.Attendance;
import com.example.emvici.Model.Attendance.AttendanceModel;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class AttendanceService {
    private final AttendanceModel attendanceModel;

    public AttendanceService() {
        this.attendanceModel = new AttendanceModel();

    }

    public void showPageUserList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        // Show list of users
        ResultSet data = attendanceModel.getAllUser();
        List<Attendance> users = new ArrayList<>();
        while (data.next()) {
            String maNV = data.getString("maNV");
            String hoTen = data.getString("hoTen");
            String tenCa = data.getString("tenCa");
            LocalDate ngayLamViec = data.getDate("ngayLamViec").toLocalDate();
            Time gioVao = data.getTime("gioVao");
            Time gioRa = data.getTime("gioRa");
            Double soGioLam = data.getDouble("soGioLam");
            // Tạo đối tượng Congviec
            Attendance user = new Attendance(maNV, hoTen, tenCa, ngayLamViec, gioVao, gioRa, soGioLam);
            // Thêm người dùng vào danh sách
            users.add(user);

        }
        request.setAttribute("data", users);
        // Forward to list.jsp
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/tt/attendance/list.jsp");
        requestDispatcher.forward(request, response);
    }

    public void deleteUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {

        String maNV = request.getParameter("maNV");
        attendanceModel.deleteUser(maNV);
        response.sendRedirect(request.getContextPath() + "/admin/att");
    }

    public void showPageAddUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/tt/attendance/create.jsp");
        requestDispatcher.forward(request, response);

    }

    public void createAttendance(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        // Get user Data from request
        String maNV = request.getParameter("maNV");
        int maCa = Integer.parseInt(request.getParameter("maCa"));

        LocalDate ngayLamViec = LocalDate.parse(request.getParameter("ngayLamViec"));
        Time gioVao = Time.valueOf(request.getParameter("gioVao") + ":00");
        Time gioRa = Time.valueOf(request.getParameter("gioRa") + ":00");

        // Tính toán số giờ làm
        long diffInMillis = gioRa.getTime() - gioVao.getTime(); // Chênh lệch thời gian tính bằng mili giây
        double soGioLam = (double) diffInMillis / (1000 * 60 * 60); // Chuyển đổi từ mili giây sang giờ
        System.out.println(soGioLam);
        Attendance attendance = new Attendance(maNV, maCa, ngayLamViec, gioVao, gioRa, soGioLam); // Tạo đối tượng Congviec
        System.out.println(attendance.toString());
        attendanceModel.add(attendance);
        // Chuyển hướng về trang danh sách người dùng
        response.sendRedirect(request.getContextPath() + "/admin/att");

    }
    public void showPageUpdateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        //get user update from database
        String maNV=request.getParameter("maNV");
        Attendance userUpdate =this.getUserById(maNV);
        request.setAttribute("user",userUpdate);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/manager/update.jsp");
        requestDispatcher.forward(request, response);
    }

    public Attendance getUserById(String maNV) throws SQLException {
        ResultSet resultSet = attendanceModel.findUserByID(maNV);
        Attendance user = null;
        while (resultSet.next()) {
            String hoTen = resultSet.getString("hoTen");
            String tenCa = resultSet.getString("tenCa");
            LocalDate ngayLamViec = resultSet.getDate("ngayLamViec").toLocalDate();
            Time gioVao = resultSet.getTime("gioVao");
            Time gioRa = resultSet.getTime("gioRa");
            Double soGioLam = resultSet.getDouble("soGioLam");
            user = new Attendance(maNV, hoTen, tenCa, ngayLamViec, gioVao, gioRa, soGioLam);
        }
        return user;
    }
}



