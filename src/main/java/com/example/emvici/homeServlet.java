package com.example.emvici;

import com.example.emvici.controller.BaseController;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "userServerlet", urlPatterns = "/admin/home/*")
public class homeServlet extends BaseController {
    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getPathInfo();
        if (url == null) {
            url = "/";
        }
        if (url.equals("/")) {
            ShowHomepage(req, resp);
        } else {
            pageNotFound(req, resp);
        }
    }


    private void ShowHomepage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter writer = response.getWriter();
        response.setContentType("text/html");
        writer.println("<h1>Uer Page</1");
    }



}
