package edu.matc.controller;

import edu.matc.entity.User;
import edu.matc.persistence.UserDao;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddUser", urlPatterns = {"/addUser"})
public class AddUser extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException,
            IOException {

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MMM-dd");


        User user = new User();

        RequestDispatcher dispatcher2 = getServletContext().getRequestDispatcher("/register");

        String userName = (String)request.getAttribute("userName");
        String userPassword = (String)request.getAttribute("userPassword");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zipCode = request.getParameter("zipCode");
        String emailAddress = request.getParameter("email");
        String birthday = request.getParameter("birthday");
        LocalDate localBirthDate = LocalDate.parse(birthday , formatter);
        // final Part filePart = request.getPart("photoUpload");

        user.setUserName(userName);
        user.setUserPassword(userPassword);
        user.setUserFirstName(firstName);
        user.setUserLastName(lastName);
        user.setUserCity(city);
        user.setUserEmail(emailAddress);
        user.setUserDateOfBirth(LocalDate.from(localBirthDate));

        UserDao userDao = new UserDao();
        userDao.addUser(user);
        String url = "/user_added.jsp";
        RequestDispatcher dispatcher =
                getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);

    }
}

