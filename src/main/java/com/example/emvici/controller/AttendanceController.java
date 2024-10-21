package com.example.emvici.controller;

import com.example.emvici.service.AttendanceService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AttendanceController",urlPatterns = {"/admin/att/*"})
public class AttendanceController extends BaseController {
    private AttendanceService attendanceService;

    @Override
    public void init() throws ServletException {
        attendanceService = new AttendanceService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getPathInfo();
        if (url == null) {
            url = "/";
        }
        try {
            switch (url) {
                case "/":
                    attendanceService.showPageUserList(req, resp);
                    break;
                case "/create":
                    attendanceService.showPageAddUser(req, resp);
                    break;
                case "/delete":
                    attendanceService.deleteUser(req, resp);
                    break;
                case "/update":
            //          attendanceService.showPageUpdateUser(req, resp);
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
                    attendanceService.createAttendance(req, resp);
                    break;
                case "/update":
        //      attendanceService.updateUser(req, resp);
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
