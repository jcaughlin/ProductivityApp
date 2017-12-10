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

            <p>Forgot <a data-toggle="modal" data-target="#passwordRecover">Lost Password?</a></p>

            <label class="checkbox">
                <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe">Remember me
            </label>


            <div class="button-group">
                <button class="btn btn-primary" type="submit">Login</button>
            </div>
        </form>
    </div>


    <div class="modal fade" id="passwordRecover" tabindex="-1" role="dialog" aria-labelledby="passwordRecover" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Yes. You are an idiot. You lost your password!</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="post" action="/passwordRecovery">
                        <div class="form-group">
                            <label for="userName"><span class="glyphicon glyphicon-user"></span>Enter User Enter</label>
                            <input type="userName" class="form-control" id="userName" placeholder="Enter User Name">
                        </div>
                        <div class="form-group">
                            <label for="userEmail"><span class="glyphicon glyphicon-envelope"></span>Enter Email</label>
                            <input type="email" class="form-control" id="userEmail" placeholder="Enter Your Email">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Submit</button>
                </div>
            </div>
        </div>
    </div>


