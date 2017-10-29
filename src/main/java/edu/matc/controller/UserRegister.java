package edu.matc.controller;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(
        name = "UserRegister",
        urlPatterns = "/register"
)
public class UserRegister extends HttpServlet {


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ///Users/josephcaughlin/MadJavaEntFall2017/ProductivityApp/src/main/webapp/signin.jsp
        String url = "/user_register.jsp";
        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
        // Code down here would keep running...Java is multi-threaded.
    }


}

