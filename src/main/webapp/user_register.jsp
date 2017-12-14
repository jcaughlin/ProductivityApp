<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="title" scope="session" value="Create Profile"/>
<c:set var="heading" scope="session" value="Join the Club"/>
<c:set var="author" scope="session" value="JS Caughlin"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/10/17
  Time: 10:24 AM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="partials/head.jsp"/>

<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker3.standalone.min.css" />

<jsp:include page="partials/header.jsp"/>

<jsp:include page="partials/navbar.jsp"/>

<jsp:include page="content/user_register_content.jsp"/>


<jsp:include page="partials/footer.jsp"/>

