<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/8/17
  Time: 1:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- User name and password come from previous page -->
<!-- TODO servlets to process-->

<fieldset>
    <form id="newUser" class="new-user-form forms" method="post" action="addUser" novalidate>
        <h2 class="form-signin-heading">Create an Account</h2>

        <div class="row">
        <!-- User First Name-->
        <div class="col-6">
        <label for="userFirstName" class="sr-only">Enter First Name</label>
        <input type="text" class="form-control" id="userFirstName" placeholder="Enter First Name">
        </div>
        <!--User Last Name-->
        <div class="col-6">
        <label for="userLastName" class="sr-only">Enter Last Name</label>
        <input type="text" class="form-control" id="userLastName" placeholder="Enter Last Name">
        </div>
        </div>
        <!--User Email-->
        <label for="userEmail" class="sr-only">Enter Email</label>
        <input type="email" class="form-control" id="userEmail" placeholder="Enter Email Address">

        <!--User City-->
        <label for="userCity" class="sr-only">Enter City</label>
        <input type="text" class="form-control" id="userCity" placeholder="Enter City">

        <!--Dynamic City Validation-->
        <!-- TODO Add Dynamic City Confirmation\*-->
        <label for="userBirthday" class="sr-only">Enter Birthday</label>
        <input type="text" class="form-control" id="userBirthday" placeholder="Enter Birthday"/>

        <!--User Profile Pic-->
        <div class="row">
            <div class="col-12">
        <label class="custom-file">
            <input type="file" id="file" class="custom-file-input">
            <span class="custom-file-control"></span>
        </label>
            </div>
        </div>

        <!--Submit Button-->
        <div class="row">
            <div class="col-12">
        <input type="submit" class="btn btn-success" value="Sign Up Now"/>
            </div>
        </div>
    </form>
</fieldset>
<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
        'use strict';

        window.addEventListener('load', function() {
            var form = document.getElementById('newUser2');
            form.addEventListener('submit', function(event) {
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        }, false);
    })();
</script>