package com.example.emvici;


import com.example.emvici.controller.BaseController;

import javax.servlet.annotation.WebServlet;

@WebServlet(name = "userServerlet", urlPatterns = "/admin/posts/*")
public class PostServerlet extends BaseController {

}
