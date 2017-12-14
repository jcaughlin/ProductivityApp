<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="title" scope="session" value="Joe Endorses"/>
<c:set var="heading" scope="session" value="Things That Might Make You Not Be Terrible"/>
<c:set var="author" scope="session" value="JS Caughlin"/>
<c:set var="button" scope="session" value="logout"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 12/5/17
  Time: 9:19 PM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="../partials/head.jsp"/>

<jsp:include page="../partials/header.jsp"/>

<jsp:include page="../content/stuff_content.jsp"/>

<jsp:include page="../partials/footer.jsp"/>

