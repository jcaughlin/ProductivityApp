package edu.matc.controller;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.apache.log4j.*;
/**
 *
 *
 *@author    JS Caughlin
 */
@WebServlet(
        name = "ServletStartup",
        urlPatterns = {"/welcome"}
) public class ServletStartup extends HttpServlet {

    Logger logger = Logger.getLogger(this.getClass());


    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url = "/index.jsp";


        RequestDispatcher requestDispatcher = request.getRequestDispatcher(url);
        requestDispatcher.forward(request,response);
    }

}

