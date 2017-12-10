<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: josephcaughlin
  Date: 11/24/17
  Time: 11:03 PM
  To change this template use Preferences | File and Code Templates--%>
<!--TODO Add Time Schedule to Task modal-->
<table class="table table-bordered table-striped table-hover">

    <thead class="thead-inverse">
    <tr>
        <th>Start Time</th>
        <th>End Time</th>
        <th>Task Name</th>
        <th></th>
    </tr>
    </thead >
    <tr>
        <td>Start Time</td>
        <td>End Time</td>
        <td>Task Name</td>
        <td><button class="btn-success">start</button><button class="button btn-danger btn-sm">stop</button></td>
    </tr>
    <tr>
        <td>Start Time</td>
        <td>End Time</td>
        <td>Task Name</td>
        <td><input type="radio"></></td>
    </tr>
    <tr>
        <td>Start Time</td>
        <td>End Time</td>
        <td>Task Name</td>
        <td><input type="radio"></></td>
    </tr>
    <tr>
        <td>Start Time</td>
        <td>End Time</td>
        <td>Task Name</td>
        <td><input type="radio"></></td>
    </tr>
    <tr>
        <td>Start Time</td>
        <td>End Time</td>
        <td>Task Name</td>
        <td><input type="radio"></></td>
    </tr>
    <tr>
        <td>Start Time</td>
        <td>End Time</td>
        <td>Task Name</td>
        <td><input type="radio"></></td>
    </tr>
    <tr>
        <td>Start Time</td>
        <td>End Time</td>
        <td>Task Name</td>
        <td><input type="radio"></></td>
    </tr>
    <tr>
        <td>Start Time</td>
        <td>End Time</td>
        <td>Task Name</td>
        <td><input type="radio"></></td>
    </tr>
    <tr>
        <td>Start Time</td>
        <td>End Time</td>
        <td>Task Name</td>
        <td><input type="radio"></></td>
    </tr>
    <tr>
        <td>Start Time</td>
        <td>End Time</td>
        <td>Task Name</td>
        <td><input type="radio"></></td>
    </tr>
    <tr>
        <td class="font-weight-bold">Total Tasks:</td>
        <td class="font-weight-bold">Total Recorded Time:</td>
        <td></td>
        <td><div id="TrashButton" class="glyphicon glyphicon-trash"></div></td>
    </tr>
</table>

    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#taskCreator">Add New Task</button>

</div>

<div class="modal fade" id="taskCreator" role="dialog">
    <div class="modal-dialog modal-lg">

        <!-- Modal content-->

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Enter Task</h4>
            </div>
            <div class="modal-body">
                <form method="post">
                    <div class="form-group">
                        <label for="taskName"><span class="glyphicon glyphicon-user"></span>Enter Task Name</label>
                        <input type="text" class="form-control" id="taskName" placeholder="Enter Task Name">
                    </div>
                    <div class="form-group">
                        <label for="dateTaskScheduled"><span class="glyphicon glyphicon-saved"></span>Date Task Scheduled</label>
                        <input type="date" class="form-control" id="dateTaskScheduled" placeholder="">
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal"><span class="glyphicon glyphicon-off"></span>Submit</button>
            </div>
        </div>

    </div>
</div>

