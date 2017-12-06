<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="title" scope="session" value="About This Here thing"/>
<c:set var="heading" scope="session" value="Here is some stuff about this page and me."/>
<c:set var="author" scope="session" value="JS Caughlin"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 11/24/17
  Time: 5:48 PM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="../partials/head.jsp"/>
<jsp:include page="../partials/header.jsp"/>
<jsp:include page="../partials/navbar.jsp"/>
<jsp:include page="../content/about_content.jsp"/>
<jsp:include page="../partials/footer.jsp"/>

