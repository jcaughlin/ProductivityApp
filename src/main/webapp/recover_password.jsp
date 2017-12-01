<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="title" scope="session" value="Password Recovery"/>
<c:set var="heading" scope="session" value="You forgot your password? Really?"/>
<c:set var="author" scope="session" value="JS Caughlin"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 11/30/17
  Time: 8:44 PM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="partials/head.jsp"/>

<jsp:include page="partials/header.jsp"/>

<jsp:include page="partials/navbar.jsp"/>

<jsp:include page="/content/recover_password_content.jsp"/>

<jsp:include page="partials/footer.jsp"/>

