<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="title" scope="session" value="Error 404-Page Not Found"/>
<c:set var="heading" scope="session" value="Error 404-You ain't Going Nowhere"/>
<c:set var="author" scope="session" value="JS Caughlin"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 12/5/17
  Time: 4:24 PM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="../partials/head.jsp"/>

<jsp:include page="../partials/header.jsp"/>

<jsp:include page="content/404error_content.jsp"/>

<jsp:include page="../partials/footer.jsp"/>

