package edu.matc.controller;

import java.io.IOException;
import java.util.*;

import org.apache.log4j.*;

import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "RecoverPasswordController", urlPatterns = "/recoverPassword")

public class RecoverPasswordController extends HttpServlet {

    private final Logger logger = LogManager.getLogger(this.getClass());


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userEmail = request.getParameter("recoverEmail");
        logger.info("Email for lost account is " + userEmail);

        String url = "recovered_password.jsp";

        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}

