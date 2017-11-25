<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="title" scope="request" value="Git 'er done!-Welcome Page"/>
<c:set var="heading" scope="request" value="Hey You! Login"/>
<c:set var="author" scope="session" value="JS Caughlin"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/25/17
  Time: 9:20 AM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="partials/head.jsp"/>
<jsp:include page="partials/header.jsp"/>
<jsp:include page="partials/navbar.jsp"/>
<jsp:include page="content/login-content.jsp"/>
<jsp:include page="partials/footer.jsp"/>



