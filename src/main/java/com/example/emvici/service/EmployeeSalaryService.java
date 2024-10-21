package com.example.emvici.service;

import com.example.emvici.Admin.EmployeeSalary;
import com.example.emvici.Emtipy.User;
import com.example.emvici.Model.EmployeeSalary.EmployeeSalaryModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeSalaryService {
    private final EmployeeSalaryModel employeeSalarymodel;

    public EmployeeSalaryService() {
        this.employeeSalarymodel = new EmployeeSalaryModel();

    }

    public void showPageUserList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        // Show list of users
        ResultSet data = employeeSalarymodel.getAllUser();
        List<EmployeeSalary> salarys = new ArrayList<>();
        while (data.next()) {
            String maNV = data.getString("maNV");
            String hoTen = data.getString("hoTen");
            double tongSoGioLam = data.getDouble("tongSoGioLam");
            double luongTheoGio = data.getDouble("luongTheoGio");
            int thang=data.getInt("thang");
            double tongLuong = data.getDouble("tongLuong");
            EmployeeSalary salary = new EmployeeSalary(maNV,hoTen, tongSoGioLam, luongTheoGio,thang,tongLuong);
            salarys.add(salary);
        }
        request.setAttribute("data", salarys);
        // Forward to list.jsp
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/tt/salary/list.jsp");
        requestDispatcher.forward(request, response);
    }
    public void deleteUser(HttpServletRequest request, HttpServletResponse respons) throws SQLException, IOException {
     String maNV =request.getParameter("maNV");
        employeeSalarymodel.deleteUser(maNV);
        respons.sendRedirect(request.getContextPath() + "/admin/salar");
    }


    public void showPageAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/tt/salary/create.jsp");
        requestDispatcher.forward(request, response);
    }
    public void createSalary(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        // Get user Data from request
        String maNV = request.getParameter("maNV");
        int thang=Integer.parseInt(request.getParameter("thang"));
        double tongSoGioLam = Double.parseDouble(request.getParameter("tongSoGioLam"));
        double luongTheoGio = Double.parseDouble(request.getParameter("luongTheoGio"));
        double phuCap = Double.parseDouble(request.getParameter("phuCap"));
        // Tính t��ng lương
        double tongLuong = (tongSoGioLam * luongTheoGio ) + phuCap;
        // Create new user object
        EmployeeSalary employeeSalary = new EmployeeSalary(maNV,thang,tongSoGioLam, luongTheoGio,phuCap,tongLuong);
        // Add new user to database
        employeeSalarymodel.add(employeeSalary);
        // Chuyển hướng về trang danh sách người dùng
        response.sendRedirect(request.getContextPath() + "/admin/salar");


    }
    public void showPageUpdateSalary(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        //get user update from database
      String maNV=request.getParameter("maNV");
      EmployeeSalary salaryUpdate = this.getUserById(maNV);
        request.setAttribute("salary",salaryUpdate );
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/Salary/update.jsp");
        requestDispatcher.forward(request, response);
    }

    public void updateUser(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
        // Get user Data from request
        String maNV = request.getParameter("maNV");
        int thang=Integer.parseInt(request.getParameter("thang"));
        double tongSoGioLam = Double.parseDouble(request.getParameter("tongSoGioLam"));
        double luongTheoGio = Double.parseDouble(request.getParameter("luongTheoGio"));
        double phuCap = Double.parseDouble(request.getParameter("phuCap"));
        // Tính t��ng lương
        double tongLuong = (tongSoGioLam * luongTheoGio ) + phuCap;

        EmployeeSalary salary = new EmployeeSalary(maNV, thang, tongSoGioLam, luongTheoGio, phuCap ,tongLuong);
        // Update user to database
        System.out.println(salary.toString());
        employeeSalarymodel.updateUser(salary);
        response.sendRedirect(request.getContextPath()+"/admin/salar");

}
    public EmployeeSalary getUserById(String maNV) throws SQLException {
        ResultSet resultSet = employeeSalarymodel.findUserByID(maNV);
        EmployeeSalary salary = null;
        while (resultSet.next()) {
            int thang=resultSet.getInt("thang");
            double tongSoGioLam = resultSet.getDouble("tongSoGioLam");
            double luongTheoGio = resultSet.getDouble("luongTheoGio");
            double phuCap = resultSet.getDouble("phuCap");
            double tongLuong = resultSet.getDouble("tongLuong");
            salary = new EmployeeSalary(maNV, thang, tongSoGioLam, luongTheoGio, phuCap,tongLuong);
        }
        return salary;
    }
}
