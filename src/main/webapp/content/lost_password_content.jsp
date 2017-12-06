<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form method="post" action="/recoverPassword">

    <label for="recoveryEmail" class="sr-onlu">Please Enter Your Email Address</label>

    <input type="email" name="recoveryEmail" id="recoveryEmail" placeholder="Enter Your Email Address"/>

    <input type="submit" class="btn btn-success" value="Sumbit">

</form>