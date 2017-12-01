package edu.matc.controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "LogoutController", urlPatterns = "/logout")

public class LogoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setHeader("Cache-Control", "no-cache, no-store");
        response.setHeader("Pragma","no-cache");

        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect(request.getContextPath() );
    }


}

