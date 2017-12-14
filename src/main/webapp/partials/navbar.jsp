<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/8/17
  Time: 1:31 PM
  To change this template use File | Settings | File Templates.
--%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="https://youtu.be/jJvjWh2Vhu4">Be Funky!</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/navbar?pageRequested=about">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/navbar?pageRequested=people">People</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/navbar?pageRequested=stuff">Stuff</a>
      </li>
    </ul>
    <span class="navbar-text">

      <c:choose>
      <c:when test="${button eq 'logout'}">
        <p>${pageContext.request.remoteUser}</p>
       <a role="button" class="btn btn-success" href="logout">LogOut</a>

      </c:when>

      <c:when test="${button eq 'login'}">
          <a role="button" class="btn btn-warning" href="listController"><span class="glyphicon glyphicon-user"></span>Sign In</a>
      </c:when>
      <c:otherwise>

      </c:otherwise>
      </c:choose>
    </span>
  </div>
</nav>
<!--End of NavBar-->
