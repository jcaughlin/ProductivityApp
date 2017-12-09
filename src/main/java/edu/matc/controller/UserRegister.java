package edu.matc.controller;

import java.io.IOException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;


@WebServlet(name = "UserRegister", urlPatterns = {"/register"})
public class UserRegister extends HttpServlet {

    private final Logger log = LogManager.getLogger(this.getClass());

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher dispatcher;
        String userName;
        String url;
        String password;
        String passwordConfirm;

        // TODO Check db if username exists
        userName = request.getParameter("username");
        // TODO check that password doesn't exist
        password = request.getParameter("password");
        passwordConfirm = request.getParameter("confirmPassword");

        if (!passwordConfirm.equals(password)) {
            String errorMessage = "Passwords Do Not Match. Please Try Again";
            url = "/index.jsp";
            request.setAttribute("errorMessage", errorMessage);
            dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);

        } else {
            url = "/user_register.jsp";
            request.setAttribute("userName", userName);
            request.setAttribute("userPassword", password);
            dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
            // Code down here would keep running...Java is multi-threaded.
        }
    }
}

