package edu.matc.controller;

import edu.matc.entity.Status;
import edu.matc.entity.User;
import edu.matc.entity.UserRoles;
import edu.matc.persistence.UserDao;
import edu.matc.util.LocalDateAttributeConverter;


import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.apache.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddUser", urlPatterns = {"/addUser"})
public class AddUser extends HttpServlet {

    private final Logger logger = Logger.getLogger(this.getClass());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException{

        String errorMessage;
        String successMessage;

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MMM-dd");

        RequestDispatcher dispatcher;

        try {
            User user = new User();

            String userName = (String) request.getAttribute("userName");
            logger.info("user Name is: " + userName);
            String userPassword = (String) request.getAttribute("userPassword");
            logger.info("User Pass is: "+ userPassword);
            String firstName = request.getParameter("firstname");
            logger.info("user first name is: " + firstName);
            String lastName = request.getParameter("lastname");
            logger.info("User Last Name is: " + lastName);
            String address = request.getParameter("addrees");
            logger.info("User address: " + address);
            String userCity = request.getParameter("city");
            logger.info("User City: " + userCity);
            String state = request.getParameter("state");
            String zipCode = request.getParameter("zipCode");
            String emailAddress = request.getParameter("email");
            // LocalDate birthday = LocalDate.parse(request.getParameter("birthday"), formatter);

            user.setUserName(userName);
            user.setUserPassword(userPassword);
            user.setUserFirstName(firstName);
            user.setUserLastName(lastName);
            user.setUserCity(userCity);
            user.setUserEmail(emailAddress);
            // user.setUserDateOfBirth(birthday);

            logger.debug("this works");


            UserDao userDao = new UserDao();

            userDao.addUser(user);

            successMessage = firstName + " " + lastName + " Thanks for joining";
            request.setAttribute("Success" , successMessage);
            request.setAttribute("User", user);
            String url = "/user_added.jsp";

            dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);

        } catch (ServletException servletException) {

            String url = "/user_register.jsp";
            errorMessage = "The was an error and user was not added. Contact Management";
            request.setAttribute("errorMessage", errorMessage);
            dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);

        }
    }
}

