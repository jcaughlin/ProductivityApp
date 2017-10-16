<<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/16/17
  Time: 10:28 AM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!-- TODO Servlet to handle post action -->


<fieldset>
    <form class = "form-login" id="login" method="post" action="">

        <h2 class="form-heading"><i class="fa fa-lock">::before</i>" Login"</h2>

        <!-- Create User Name-->
        <label for="userName" class="sr-only">Create User</label>
        <input type="email" class="form-control" id="userName" placeholder="Enter User Name" required autofocus>

        <!--User password-->
        <label for="userpassword" class="sr-only">Create Password:</label>
        <input type="password" class="form-control" id="userPassword" placeholder="Enter Password" required>


        <div class="checkbox">
            <label>
                <input type="checkbox" value="Remember Me">
                <span>Remember Me</span>
            </label>
        </div>

        <!--Submit Button-->
        <input type="submit" class="btn btn-success" value="Sign Up Now"><a href="${<VARIABLE_NAME>}">Forgot Password?</a>

    </form>






    </form>

</fieldset>




