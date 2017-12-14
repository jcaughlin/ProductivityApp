<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="title" scope="session" value="About This Here thing"/>
<c:set var="heading" scope="session" value="Here is some stuff about this page and me."/>
<c:set var="author" scope="session" value="JS Caughlin"/>
<c:set var="button" scope="session" value="logout"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 11/24/17
  Time: 5:48 PM
  To change this template use Preferences | File and Code Templates--%>


<jsp:include page="../partials/head.jsp"/>
<jsp:include page="../partials/header.jsp"/>
<jsp:include page="../partials/navbar.jsp"/>
<jsp:include page="../content/about_content.jsp"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/typeit/5.2.0/typeit.js"></script>
<jsp:include page="../javascript/typeit.js"/>
<jsp:include page="../partials/footer.jsp"/>

