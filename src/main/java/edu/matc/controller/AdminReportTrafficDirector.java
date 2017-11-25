package edu.matc.controller;

import org.apache.log4j.*;


import java.io.*;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AdminReportTrafficDirector", urlPatterns = {"/reportDirector"})

public class AdminReportTrafficDirector extends HttpServlet {


    private final Logger logger = LogManager.getLogger(this.getClass());

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String adminReportSelector = request.getParameter("adminReportSelector");
        logger.info(adminReportSelector);

        logger.info("I am  here");

        if (adminReportSelector.equals("userManagement")) {

           String url = "/admin/admin-report-generator.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        } else if (adminReportSelector.equals("reportGenerator")) {
            String url = "/admin/admin-user-management.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);

        } else {
            logger.error("we have a major error because we should never see this message");
        }



    }

}


