<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 10/5/17
  Time: 1:24 PM
  To change this template use Preferences | File and Code Templates--%>

<body>
<!--Start of container-->
<div class="container">

        <div class="jumbotron-fluid">
            <div class="row margin-correct">
            <div class="col-lg-6"-><h1 class="display-3"><c:out value="${heading}" default="Hey Ya"/></h1></div>
            <div class="col-lg-6">
                <blockquote class="blockquote=reverse">
                <p class="small"><em>"It is not to late to do the one the
                    thing from the day before tomorrow before the day after yesterday becomes yesterday today"</em></p>
                    <footer><strong>-JS Caughlin</strong></footer>
                </blockquote>
            </div>
            </div>
        </div>



