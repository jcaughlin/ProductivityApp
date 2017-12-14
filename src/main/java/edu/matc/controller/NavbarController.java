package edu.matc.controller;

import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet(name = "NavbarController", urlPatterns = "/navbar")
public class NavbarController extends HttpServlet {

    private final Logger log = Logger.getLogger(this.getClass());

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String pageRequested = request.getParameter("pageRequested");
        log("The Page Requested: " + pageRequested);

        if(pageRequested.equals("people")) {
            String url = "/users/people.jsp";
            log("The path to the people controller" + url);
            redirector(url,request,response);

        } else if(pageRequested.equals("stuff")){
            log("taco wallace");
            String url = "/users/stuff.jsp";
            redirector(url,request,response);
        } else if(pageRequested.equals("about")){
            String url ="/users/about.jsp";
            redirector(url,request,response);
        } else if (pageRequested.equals("liam")){
            String url ="/users/liam.jsp";
            redirector(url,request,response);
        } else {
            String url ="/error_pages/error.jsp";
            redirector(url,request,response);
        }


    }

    private void redirector(String url, HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}


