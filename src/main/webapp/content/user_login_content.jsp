<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/10/17
  Time: 10:28 AM
  To change this template use Preferences | File and Code Templates--%>

<!-- TODO Servlet to handle post action -->
<!-- TODO Servlet to handle recover password -->
<div class="container">
    <div class="wrapper">
        <form class="form-signin" method="POST" action="./login">
            <h2 class="form-signin-heading">Please login</h2>
            <input type="text" class="form-control" name="username" placeholder="Email Address" required="" autofocus="" />
            <input type="password" class="form-control" name="password" placeholder="Password" required=""/>
            <label class="checkbox">
                <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
            </label>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
        </form>
    </div>


