$(document).ready(function () {
    console.log("working");
    $('#sandbox-container input').datepicker({
        autoclose: true
    });

    $('#sandbox-container input').on('show', function (event) {


        if (event.date) {
            $(this).data('date', event.date);
        }
        else {
            $(this).data('date', null);
        }
    });

    $('#sandbox-container input').on('hide', function (event) {
        var stickyDate = $(this).data('date');

        if (!event.date && date) {

            $(this).datepicker('setDate', date);
            $(this).data('date', null);
        }
    });
});