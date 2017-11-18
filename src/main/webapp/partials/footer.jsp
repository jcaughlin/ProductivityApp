<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" session="true" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/8/17
  Time: 1:31 PM
  To change this template use File | Settings | File Templates.
--%>
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white"> &#169;&nbsp;${author}&nbsp;<c:out value="${sessionScope.Year}"/></p>
    </div>
</footer>


</body>
</html>