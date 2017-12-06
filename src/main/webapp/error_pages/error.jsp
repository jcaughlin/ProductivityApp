<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="title" scope="session" value="Login Error"/>
<c:set var="heading" scope="session" value="You Are Not Valid"/>
<c:set var="author" scope="session" value="JS Caughlin"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/26/17
  Time: 5:09 PM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="../partials/head.jsp"/>
<jsp:include page="../partials/header.jsp"/>
1
<jsp:include page="content/error_content.jsp"/>
<jsp:include page="../partials/footer.jsp"/>

