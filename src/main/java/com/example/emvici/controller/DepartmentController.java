package com.example.emvici.controller;

import com.example.emvici.service.AttendanceService;
import com.example.emvici.service.DepartmentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
@WebServlet(name = "DepartmentController ",urlPatterns = {"/admin/department/*"})
public class DepartmentController  extends BaseController{

        private DepartmentService departmentService;

        @Override
        public void init() throws ServletException {
            departmentService = new DepartmentService();
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
                        departmentService.showPageUserList(req, resp);
                        break;

                    case "/delete":
                        departmentService.deleteUser(req, resp);
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
