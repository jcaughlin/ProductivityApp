<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="title" scope="session" value="Welcome"/>
<c:set var="header" scope="session" value="header"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/25/17
  Time: 9:20 AM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="partials/head.jsp"/>

<jsp:include page="partials/header.jsp"/>


<jsp:include page="content/user_welcome_content.jsp"/>

<jsp:include page="partials/footer.jsp"/>

