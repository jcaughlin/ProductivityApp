package edu.matc.controller;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(
        name = "AdminServlet",

// ex. "/url"
        urlPatterns = "/admin"


)
public class AdminServlet extends HttpServlet {


    public void init(ServletConfig config) {

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url = "/Users/josephcaughlin/MadJavaEntFall2017/ProductivityApp/src/main/webapp/admin-login.jsp";
        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
        // Code down here would keep running...Java is multi-threaded.
    }

    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp)
            throws ServletException,
            IOException {

    }
}

