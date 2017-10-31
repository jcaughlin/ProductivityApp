<<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/16/17
  Time: 10:28 AM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!-- TODO Servlet to handle post action -->



    <form class = "form-signin" id="login" ACTION="j_security_check" method="POST">

            <h2 class="form-heading"><i class="fa fa-lock">::before</i>" Login"</h2>
            <label for="adminUserName" class="sr-only"></label>
            <input type="text" id="adminUserName" class="form-control" placeholder="User Name" NAME="j_username" required="" autofocus="">
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" NAME="j_password" required="">
            <INPUT TYPE="SUBMIT" VALUE="Log In">

    </form>








