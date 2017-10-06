<jsp:include page="jstl_tag.jsp"/>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/5/17
  Time: 1:24 PM
  To change this template use File | Settings | File Templates.
--%>
<!--Page Heading-->
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
