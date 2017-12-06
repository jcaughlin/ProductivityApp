<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="title" scope="session" value="User Management Administration"/>
<c:set var="heading" scope="session" value="Your users need managing!"/>
<c:set var="author" scope="session" value="JS Caughlin"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 11/24/17
  Time: 6:44 PM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/partials/head.jsp"/>

<jsp:include page="/partials/header.jsp"/>


<jsp:include page="admin_user_management.jsp"/>

<jsp:include page="/partials/footer.jsp"/>

