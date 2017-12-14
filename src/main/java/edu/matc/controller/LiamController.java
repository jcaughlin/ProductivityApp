package edu.matc.controller;

import java.io.IOException;
import java.util.*;

import org.apache.log4j.*;

import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "LiamController", urlPatterns = "/liam")

public class LiamController extends HttpServlet {

    private final Logger logger = LogManager.getLogger(this.getClass());



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url = "/users/liam.jsp";
        logger.debug(url);
        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}

