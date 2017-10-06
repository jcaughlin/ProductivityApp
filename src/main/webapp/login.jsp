<jsp:include page="jstl_tag.jsp"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/5/17
  Time: 1:30 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="pull-right">
<fieldset>
    <form class="form-vertial" method="post" action="/login.jsp">

        <!-- User Email-->
        <div class="control-group">
            <label class="control-label" for="email">Email Address:</label>
            <div class="controls">
                <input type="email" required="required" class="input-xlarge" id="email" name="email">
            </div>
        </div>

        <!--User password-->
        <div class="control-group">
            <label class="control-label" for="userpassword">Create Password:</label>

        <div class="controls"></div>
            <input type="email" required="required" class="input-xlarge" id="userpassword" name="userpassword">
        </div>


        <!--User password verify-->
        <div class="control-group">
            <label class="control-label" for="passwordverify">Verify Password:</label>
            <div class="controls">
                <input type="password" required="required" class="input-xlarge" id="passwordverify" name="passwordverify">
            </div>
        </div>
<div class="control-group">

    <div class="g-recaptcha" data-sitekey="6LcoVTMUAAAAALS8qu7IVM0NiSeXfFddonZJi8Z1"></div>
</div>
        <!--Submit Button-->
        <div class="control-group">
            <div class="button-group">
        <input type="submit" class="btn btn-success" value="Sign Up Now">
            </div>
        </div>




    </form>



</fieldset>

</div>
