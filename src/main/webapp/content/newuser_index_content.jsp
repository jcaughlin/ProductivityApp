<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/5/17
  Time: 1:30 PM
  To change this template use File | Settings | File Templates.
--%>
<fieldset>
    <form class="form-signin forms" method="post" action="register" id="newUser">
        <h2 class="form-signin-heading">Start Your More Better Today!!!</h2>

        <!--User Name-->
        <div class="row">
            <label for="createUserName" class="sr-only">Create A User Name</label>
            <input type="text" class="form-control" id="createUserName" name="username" placeholder="Create User Name"
                   autofocus=""/>
            <div class="invalid-feedback">
                <p>${userExistsError}</p>
            </div>
            <p>${userExistsError}</p>
        </div>

        <!--User Password-->
        <div class="row">
            <label for="password" class="sr-only">Create A Password</label>
            <input type="password" class="form-control" id="password" name="password"
                   placeholder="Create a password"/>
        </div>

        <!--Password Confirm-->
        <div class="row">
            <label for="confirm_password" class="sr-only">Confirm Password</label>
            <input type="password" class="form-control" id="confirm_password" name="confirm_password"
                   placeholder="Confirm Password"/>
        </div>
        <div class="invalid-feedback">Passwords Do Not Match</div>
        <p class="font-weight-bold">${errorMessage}</p>

        <!--Non working option to persist user name-->
        <div class="row">
            <label for="user-save">
            <input type="checkbox" type="checkbox" id="user-save">Remember Me
            </label>
        </div>
        <small class="form-text text-muted">Check Box doesn't currently function</small>

        <div class="row">
            <input class="btn btn-lg btn-primary btn-block" type="submit" name="action" value="Create Account"/>
        </div>

    </form>
</fieldset>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.js"></script>
<script src="javascript/validation.js"></script>





