<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/10/17
  Time: 10:28 AM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- TODO Cookie to recognized current user still "signed in" -->
<!-- TODO Servlet to handle recover password -->
<div class="container">
    <div class="wrapper">
        <form class="forms form-signin" method="POST" action="j_security_check">
            <h2 class="form-signin-heading">Please login</h2>


            <input type="text" class="form-control" name="j_username" id="j_username" placeholder="User Name"
                   class="form-control" required="" autofocus=""/>


            <input type="password" class="form-control" name="j_password" id="j_password" placeholder="Password"
                   class="form-control" required=""/>

            <p>Forgot <a href="#">Password?</a></p>

            <label class="checkbox">
                <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
            </label>
<!--
            <div class="row">
                <div class="g-recaptcha" data-sitekey="6LeaVTMUAAAAAL5G3U10uuBdVbXBbNGv6Wmd9R1J"></div>
            </div>-->


            <div class="button-group">
                <button class="btn btn-primary" type="submit">Login</button>


            </div>
        </form>

    </div>


