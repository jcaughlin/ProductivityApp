<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="title" scope="session" value="title"/>
<c:set var="header" scope="session" value="header"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/26/17
  Time: 5:09 PM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="partials/head.jsp"/>

<jsp:include page="partials/header.jsp"/>

<!-- Your Content Goes Here -->

<jsp:include page="content/error-content.jsp"/>

<jsp:include page="partials/footer.jsp"/>

