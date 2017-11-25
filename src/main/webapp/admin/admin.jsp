<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="title" scope="session" value="Welcome Admin"/>
<c:set var="heading" scope="session" value="If your name ain't Joe, you best be gettin'
off this elevator"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/16/17
  Time: 8:44 AM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="../partials/head.jsp"/>

<jsp:include page="../partials/header.jsp"/>
<jsp:include page="../partials/navbar.jsp"/>

<jsp:include page="admin-menu-content.jsp"/>

<jsp:include page="../partials/footer.jsp"/>

