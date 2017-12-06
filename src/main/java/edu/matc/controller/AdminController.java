package edu.matc.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;
import java.util.*;


import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "AdminController", urlPatterns = "/A_D_M_I_N")

public class AdminController extends HttpServlet {

    private final Logger logger = LogManager.getLogger(this.getClass());


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "${pageContext.request.contextPath}/admin/admin.jsp";
        logger.info("this is the path" + url);
        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

}

