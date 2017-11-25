<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 11/21/17
  Time: 11:34 AM
  To change this template use Preferences | File and Code Templates--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--TODO Servlet to Direct Traffic-->
<form class="form" action="${pageContext.request.contextPath}/reportDirector" method="get">
    <fieldset>
    <h2>Select Your Report</h2>
        <div class="form-row">
        <select class="form-control form-control-lg" name="adminReportSelector">
            <option readonly>Choose Action</option>
            <option value="userManagement">User Management</option>
            <option value="reportGenerator">Report Generator</option>
        </select>
        <input type="submit" class="btn btn-success" value="Let's Go"/>
        </div>
    </fieldset>
</form>


