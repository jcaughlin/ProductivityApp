<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="title" scope="session" value="ERROR 401"/>
<c:set var="heading" scope="session" value="ERROR 401:You are Not Okay"/>
<c:set var="author" scope="session" value="JS Caughlin"/>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="partials/head.jsp"/>
<jsp:include page="partials/header.jsp"/>
<jsp:include page="partials/navbar.jsp"/>
<jsp:include page="content/unauthorized_content.jsp"/>
<jsp:include page="partials/footer.jsp"/>