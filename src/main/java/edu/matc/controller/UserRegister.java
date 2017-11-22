package edu.matc.controller;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import org.apache.log4j.*;

@WebServlet(
        urlPatterns = {"/register"}
)
public class UserRegister extends HttpServlet {

    private final Logger log = LogManager.getLogger(this.getClass());


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userName = "";
        String userPassword = "";
        String userPassword2 = "";

        ///Users/josephcaughlin/MadJavaEntFall2017/ProductivityApp/src/main/webapp/signin.jsp
        String url = "/user_register.jsp";

        log.info(url);

        userName = request.getParameter(userName);

        userPassword = request.getParameter(userPassword);

        userPassword2 = (String) request.getParameter(userPassword2);

        log.info(userName);
        log.info(userPassword);
        log.info(userPassword2);

        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
        // Code down here would keep running...Java is multi-threaded.
    }


}

