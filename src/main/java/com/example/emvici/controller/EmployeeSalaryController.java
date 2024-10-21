package com.example.emvici.controller;

import com.example.emvici.service.EmployeeSalaryService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "EmployeeSalaryController",urlPatterns = "/admin/salar/*")
public class EmployeeSalaryController extends BaseController {
    private EmployeeSalaryService employeeSalaryService;

    @Override
    public void init() throws ServletException {
        employeeSalaryService = new EmployeeSalaryService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getPathInfo();
        if ((url == null)) {
            url = "/";
        }
        try {
            switch (url) {
                case "/":
                    employeeSalaryService.showPageUserList(req, resp);
                    break;
                case "/create":
                     employeeSalaryService.showPageAdd(req, resp);
                    break;
                case "/delete":
                    employeeSalaryService.deleteUser(req, resp);
                    break;
                case"/update":
              employeeSalaryService.showPageUpdateSalary(req, resp);
                    break;
                default:
                    pageNotFound(req, resp);
                    break;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException(e);

        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Handle POST requests here
        String url = req.getPathInfo();
        if ((url == null)) {
            url = "/";
        }
        try {
            switch (url) {
                case "/create":
                    employeeSalaryService.createSalary(req, resp);
                    break;
                case "/update":
                       employeeSalaryService.updateUser(req, resp);
                    break;
                default:
                    pageNotFound(req, resp);
                    break;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException(e);
        }
    }


}
