<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>

<head>
    <title>Sport events</title>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/evo-calendar.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/evo-calendar.midnight-blue.min.css" />" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
<div class="main-page">
    <div id="calendar"></div>
    <div>
        <!-- Add Button trigger modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addModal">
            Add event
        </button>

        <!-- Add button Modal -->
        <div class="modal fade" id="addModal" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add event</h5>
                    </div>
                    <form method="post" action="add-event">
                        <div class="form-group">
                            <label for="event-date">Event-data:</label>
                            <input type="date" id="event-date" name="event-date">
                        </div>
                        <div class="form-group">
                            <label for="event-name">Event-name:</label>
                            <input type="text" id="event-name" name="event-name">
                        </div>
                        <div class="modal-footer form-group text-center">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Add button Modal End -->

        <form action="display-with-date-range">
            <div class="form-group">
                <label for="from-date">from:</label>
                <input type="date" id="from-date" name="from-date">
            </div>
            <div class="form-group">
                <label for="to-date">to:</label>
                <input type="date" id="to-date" name="to-date">
            </div>
            <button type="submit" class="btn btn-primary">show</button>
        </form>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>


<script src=" https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.min.js "></script>
<script src="<c:url value="/resources/js/evo-calendar.min.js"/>"></script>
<script>
    $(document).ready(function () {
        $('#calendar').evoCalendar({
            calendarEvents: [{
                id: 'abc', // Event's ID (required)
                name: '${event}', // Event name (required)
                date: "January/1/2020", // Event date (required)
                type: "holiday", // Event type (required)
                everyYear: true // Same event every year (optional)
            }, {
                name: "Vacation Leave",
                badge: "02/13 - 02/15", // Event badge (optional)
                date: ["February/13/2020", "February/15/2020"], // Date range
                description: "Vacation leave for 3 days.", // Event description (optional)
                type: "event",
                color: "#63d867" // Event custom color (optional)
            }, {
                id: 'abc', // Event's ID (required)
                name: "abc", // Event name (required)
                date: "January/1/2020", // Event date (required)
                type: "holiday", // Event type (required)
                everyYear: true // Same event every year (optional)
            }]
        })
    })
</script>

</body>
</html>