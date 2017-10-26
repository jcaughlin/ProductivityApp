package edu.matc.controller;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(
        name = "LoginHandler",
        urlPatterns = "/login"
)
public class LoginHandler extends HttpServlet {


    protected void doGet(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException,
            IOException {

        String url = "/user_welcome.jsp";
        //Forward to jsp page
        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);

        dispatcher.forward(request, response);
    }

}