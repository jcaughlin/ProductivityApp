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


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userName = "";
        String userPassword = "";
        String userPassword2 = "";

        String url = "/user_register.jsp";

        log.info(url);

        userName = request.getParameter("username");

        userPassword = request.getParameter("password");

        userPassword2 = request.getParameter("confirmPassword");
        request.setAttribute("userName", userName);
        request.setAttribute("userPassword", userPassword);

        if(!userPassword.equals(userPassword2)){
            log.info("We have a mismatch");
        }

        log.info(userName);
        log.info(userPassword);
        log.info(userPassword2);

        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
        // Code down here would keep running...Java is multi-threaded.
    }


}

