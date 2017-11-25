package edu.matc.controller;

import org.apache.log4j.*;

import java.io.*;
import java.util.*;


import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "LoginHandler", urlPatterns = {"/signin"})

public class LoginHandler extends HttpServlet {

    private final Logger log = LogManager.getLogger(this.getClass());

    @Override
    public void doGet(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException,
            IOException {
        log.info("your mom is in dogetting");
        String url = "/login.jsp";

        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);

        dispatcher.forward(request, response);
    }

}