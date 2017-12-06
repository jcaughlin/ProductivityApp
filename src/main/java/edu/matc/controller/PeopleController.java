package edu.matc.controller;

import org.apache.log4j.*;

import java.io.IOException;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "PeopleController", urlPatterns = "/people")

public class PeopleController extends HttpServlet {

    private final Logger log = LogManager.getLogger(this.getClass());

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String url = "${pageContext.request.contextPath}/users/people.jsp";
        log.info("The path to the people controller" + url);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);

    }
}


