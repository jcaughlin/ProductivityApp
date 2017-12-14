package edu.matc.controller;



import org.apache.log4j.Logger;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AdminReportTrafficDirector", urlPatterns = {"/reportDirector"})

public class AdminReportTrafficDirector extends HttpServlet {

    private final Logger logger = Logger.getLogger(this.getClass());

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String adminReportSelector = request.getParameter("adminReportSelector");
        logger.info(adminReportSelector);

        logger.info("I am  here");

        if (adminReportSelector.equals("userManagement")) {

           String url = "/admin/admin_report_generator.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        } else if (adminReportSelector.equals("reportGenerator")) {
            String url = "/admin/admin_user_management.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);

        } else {
            logger.error("we have a major error because we should never see this message");
        }



    }

}


