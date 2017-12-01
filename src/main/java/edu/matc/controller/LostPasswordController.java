package edu.matc.controller;

import org.apache.log4j.*;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "LostPasswordController", urlPatterns = "/lostPassword")

public class LostPasswordController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userRecoveryEmail = request.getParameter("recoveryEmail");
        String url = "recover_password.jsp";

        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }


}

