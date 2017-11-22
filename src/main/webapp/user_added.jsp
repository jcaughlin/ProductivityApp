<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="title" scope="session" value="Added Account Successfully"/>
<c:set var="heading" scope="session" value="You are now a member. What are you going to do?"/>
<c:set var="author" scope="session" value="JS Caughlin"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 11/21/17
  Time: 5:23 PM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="partials/head.jsp"/>

<jsp:include page="partials/header.jsp"/>

<!-- Your Content Goes Here -->

<h1>You are a member</h1>

<jsp:include page="partials/footer.jsp"/>

