package com.example.emvici.controller;


import com.example.emvici.service.WorksService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;



@WebServlet(name = "WorkController",urlPatterns = "/admin/work/*")
public class WorkController extends BaseController {
    private WorksService worksService;

    @Override
    public void init() throws ServletException {
        worksService = new WorksService();
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
                    worksService.showPageUserList(req, resp);
                    break;
                case "/create":
                    worksService.showPageAddUser(req, resp);
                    break;
                case "/delete":
                    worksService.deleteUser(req, resp);
                    break;
                case "/update":
                    worksService.showPageUpdateUser(req, resp);
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

        String url = req.getPathInfo();
        if ((url == null)) {
            url = "/";
        }
        try {
            switch (url) {
                case "/create":
                    worksService.createUser(req, resp);
                    break;
              case "/update": worksService.updateUser(req, resp);
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



