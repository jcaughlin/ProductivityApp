<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page language="java" session="true" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/8/17
  Time: 1:31 PM
  To change this template use File | Settings | File Templates.
--%>
<!--Navbar-->
<!--TODO Do I need a login and home link?-->
<!--How will I handle the traffic for the tasks above-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Be Funky!</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/about.jsp">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="people">People</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/stuff.jsp">Stuff</a>
      </li>
    </ul>
    <span class="navbar-text">

      <c:choose>
      <c:when test="${heading eq 'Welcome'}">
        <a role="button" class="btn btn-warning" href="listController"><span class="glyphicon glyphicon-user"></span>Sign In</a>
      </c:when>
      <c:when test="${heading eq 'Hey You! Login' || heading eq 'Create Yo Account'}">

      </c:when>
      <c:otherwise>
        <p>${pageContext.request.remoteUser}</p>
        <a role="button" class="btn btn-success" href="logout">LogOut</a>

      </c:otherwise>
      </c:choose>
    </span>
  </div>
</nav>
<!--End of NavBar-->
