package edu.matc.controller;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.format.DateTimeFormatter;
import java.time.LocalDate;


@WebServlet(

        name = "ServletStartup",
        urlPatterns = {"/startup"}
)

public class ServletStartup extends HttpServlet {

    /**
     * Handles HTTP GET requests.
     *
     * @param request  the HttpRequest
     * @param response the HttpResponse
     * @throws ServletException if there is a general
     *                          servlet exception
     * @throws IOException      if there is a general
     *                          I/O exception
     */
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws ServletException, IOException {


        String url = "/index.jsp";

        LocalDate date = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy");
        String year = date.format(formatter);


        HttpSession session = request.getSession();
        session.setAttribute("Year", year);


        //Forward to jsp page
        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);

        dispatcher.forward(request, response);

    }

}