<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/10/17
  Time: 10:28 AM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!-- TODO Servlet to handle post action -->
<!-- TODO Servlet to handle recover password -->
<div class="container">
    <div class="wrapper">
        <form class="form-signin" method="POST" action="j_security_check">
            <h2 class="form-signin-heading">Please login</h2>
            <input type="text" class="form-control" name="username" placeholder="Email Address" required="" autofocus="" />
            <input type="password" class="form-control" name="password" placeholder="Password" required=""/>
            <label class="checkbox">
                <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
            </label>

            <div class="button-group">
            <button class="btn btn-primary" type="submit">Login</button>
            <button class="btn btn-success" href="submit">Forgot Password</button>
            </div>
        </form>
    </div>


