<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="title" scope="request" value="User Task Entry"/>
<c:set var="heading" scope="request" value="What Have you done"/>
<c:set var="author" scope="session" value="JS Caughlin"/>
<c:set var="button" scope="session" value="logout"/>

<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 11/17/17
  Time: 4:40 PM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="../partials/head.jsp"/>
<jsp:include page="../partials/header.jsp"/>
<jsp:include page="../partials/navbar.jsp"/>
<jsp:include page="../content/task_list_content.jsp"/>
<jsp:include page="../partials/footer.jsp"/>
