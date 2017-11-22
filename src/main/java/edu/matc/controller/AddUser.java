package edu.matc.controller;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(
        name = "AddUser",

// ex. "/url"
        urlPatterns = "/addUser"


)
public class AddUser extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException,
            IOException {

        String url = "/user_added.jsp";
        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);

    }
}

