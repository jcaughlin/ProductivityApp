package edu.matc.controller;

import java.io.IOException;
import java.util.*;

import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "PasswordRecoveryController", urlPatterns = "/passwordRecovery")

public class PasswordRecoveryController extends HttpServlet {

    private final Logger logger = Logger.getLogger(this.getClass());


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url = "/recover_password.jsp";

        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}

