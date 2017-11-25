package edu.matc.controller;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "AdminReportTrafficDirector", urlPatterns = {"/reportDirector"})

public class AdminReportTrafficDirector extends HttpServlet {

    private final Logger logger = LogManager.getLogger(this.getClass());

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url;
        String adminSiteRequested = request.getParameter("adminReportSelector");
        logger.info(adminSiteRequested);
        if (adminSiteRequested.equals("userManagement")) {

            url = "/admin/admin-report-generator.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
        } else if (adminSiteRequested.equals("reportGenerator")) {
            url = "/admin/user-management.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);

        } else {
            logger.error("we have a major error because we should never see this message");
        }

    }

}


