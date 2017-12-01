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
        <h2 class="form-signin-heading">Create login</h2>

        <label for="createUserName" class="sr-only">Create A User Name</label>
        <input type="text" class="form-control" id="createUserName" name="username" placeholder="Create User Name"
               required="" autofocus=""/>

        <label for="createPassword" class="sr-only">Create A Password</label>
        <input type="password" class="form-control" id="createPassword" name="password" placeholder="Password" required=""/>

        <label for="confirmPassword" class="sr-only">Confirm Password</label>
        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword"
               placeholder="Confirm Password" required=""/>


        <label class="checkbox">
            <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe">Remember me
        </label>
        <input class="btn btn-lg btn-primary btn-block" type="submit" name="action" value="Create Account"/>

    </form>
</fieldset>






