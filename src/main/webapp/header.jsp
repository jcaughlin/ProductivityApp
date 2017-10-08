<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/5/17
  Time: 1:24 PM
  To change this template use Preferences | File and Code Templates--%>
--%>
<!--Page Heading-->


<!--Start of container-->
<div class="container"></div>
<div class="row pagehead">
    <div class="col-sm-10">
        <div class="page-header row center-block">
            <h1>${heading}</h1>
        </div>
    </div>
    <div class="col-sm-2">
        <jsp:include page="dropdown_menu.jsp" />
    </div>
</div>


<jsp:include page="head.jsp"/>

<jsp:include page="header.jsp"/>

<jsp:include page="footer.jsp"/>
