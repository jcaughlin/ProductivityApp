<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/5/17
  Time: 1:30 PM
  To change this template use File | Settings | File Templates.
--%>

<fieldset>
    <form class="form-signin" method="post" action="register">
        <h2 class="form-signin-heading">Create login</h2>
        <input type="text" class="form-control" name="username" placeholder="Create User Name" required="" autofocus="" />
        <input type="password" class="form-control" name="password" placeholder="Password" required=""/>
        <input type="password" class="form-control" name="passwordConfirm" placeholder="Confirm Password" required=""/>
        <label class="checkbox">
            <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe">Remember me
        </label>
        <input class="btn btn-lg btn-primary btn-block" type="submit" name="action" value="Create Account"/>

    </form>
</fieldset>




