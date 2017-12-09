package edu.matc.controller;

import edu.matc.entity.Status;
import edu.matc.entity.User;
import edu.matc.entity.UserRoles;
import edu.matc.persistence.UserDao;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddUser", urlPatterns = {"/addUser"})
public class AddUser extends HttpServlet {

    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MMM-dd");

        RequestDispatcher dispatcher;

        RequestDispatcher dispatcher2 = getServletContext().getRequestDispatcher("/register");


            User user = new User();

            String userName = (String) request.getAttribute("userName");
            String userPassword = (String) request.getAttribute("userPassword");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String city = request.getParameter("city");
            // String state = request.getParameter("state");
            // String zipCode = request.getParameter("zipCode");
            String emailAddress = request.getParameter("email");
            String birthday = request.getParameter("birthday");
            LocalDate localBirthDate = LocalDate.parse(birthday, formatter);
            user.setUserName(userName);
            user.setUserPassword(userPassword);
            user.setUserFirstName(firstName);
            user.setUserLastName(lastName);
            user.setUserCity(city);
            user.setUserEmail(emailAddress);
            user.setUserDateOfBirth(LocalDate.from(localBirthDate));

            LocalDate birthDate = LocalDate.of(1922,04,15);

            UserDao userDao = new UserDao();
                User testUser = new User("coco","password","userEmail","Tampa");
            userDao.addUser(testUser);

            String url = "user_added.jsp";

            dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);



    }
}

