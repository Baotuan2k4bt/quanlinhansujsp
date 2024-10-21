package com.example.emvici.service;

import com.example.emvici.Admin.Admin;
import com.example.emvici.Admin.phongBan;
import com.example.emvici.Model.Department.DepartmentModel;
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

public class DepartmentService {
    private final DepartmentModel departmentModel;

    public DepartmentService() {
        this.departmentModel = new DepartmentModel();

    }
    public void showPageUserList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        // Show list of users
        ResultSet data = departmentModel.getAllUser();
        List<phongBan> departments= new ArrayList<>();
        while (data.next()) {
            int maPhongBan = data.getInt("maPhongBan");
            String tenPhongBan = data.getString("tenPhongBan");
            String moTa = data.getString("moTa");
            phongBan department = new phongBan(maPhongBan, tenPhongBan, moTa);
            departments.add(department);
        }
        request.setAttribute("data", departments);
        // Forward to list.jsp
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/tt/phongban/list.jsp");
        requestDispatcher.forward(request, response);
    }
    public void deleteUser(HttpServletRequest request, HttpServletResponse respons) throws SQLException, IOException {
       int maPhongBan= Integer.parseInt(request.getParameter("maPhongBan"));
        departmentModel.deleteUser(maPhongBan);
        respons.sendRedirect(request.getContextPath() + "/admin/department");
    }

}
