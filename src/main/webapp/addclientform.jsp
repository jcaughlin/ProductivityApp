<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/8/17
  Time: 1:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<fieldset>
    <form class="form-signin" method="post" action="$1">
        <h2 class="form-signin-heading">Create an Account</h2>

        <!-- User First Name-->
        <label for="userFirstName" class="sr-only">Enter First Name</label>
        <input type="text" class="form-control" id="userFirstName" placeholder="Enter First Name">

        <!--User Last Name-->
        <label for="userLastName" class="sr-only">Enter Last Name</label>
        <input type="text" class="form-control" id="userLastName" placeholder="Enter Last Name">

        <!--User Email-->
        <label for="userEmail" class="sr-only">Enter Email</label>
        <input type="email" class="form-control" id="userEmail" placeholder="Enter Last Name">

        <!--User City-->
       <label for="userCity" class="sr-only">Enter City</label>
        <input type="text" class="form-control" id="userCity" placeholder="Enter City">

        <!--Dynamic City Validation-->
      <!-- TODO Add Dynamic City Confirmation\*-->
       <label for="userBirthday" class="sr-only">Enter Birthday</label>
        <input type="date" class="form-control" id="userBirthday" placeholder="Enter Birthday"/>

        <!--User Profile Pic-->
        <label for="userPhoto" class="sr-only">Upload Photo-Optional</label>
        <input type="file" class="form-control" id="userPhoto" placeholder="Add a Profile Pic"/>
        <small id="photoHelper" class="form-text text-muted">Optional</small>


        <!--Submit Button-->
        <input type="submit" class="btn btn-success" value="Sign Up Now">

    </form>
</fieldset>
