<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="title" scope="request" value="User Task Entry"/>
<c:set var="heading" scope="request" value="What Have you done"/>
<c:set var="author" scope="session" value="JS Caughlin"/>

<jsp:include page="partials/head.jsp"/>
<jsp:include page="partials/header.jsp"/>
<jsp:include page="partials/navbar.jsp"/>
<jsp:include page="content/task_list_content.jsp"/>
<jsp:include page="partials/footer.jsp"/>
