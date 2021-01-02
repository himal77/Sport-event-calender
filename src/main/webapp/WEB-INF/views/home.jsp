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
</div>
<div class="container-fluid">
    <div class="row mt-3">
        <div class="col-md-4 offset-md-4">
            <div class="card text-center">
                <div class="card-body px-5" style="background-color:#b4e364">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addModal">
                        Add event
                    </button>
                </div>
            </div>

            <div class="card text-center">
                <div class="card-body px-5" style="background-color:#b4e364">
                    <form action="display-with-date-range">
                        <div class="form-group">
                            <label for="from-date"><b>From:</b></label>
                            <input type="date" id="from-date" name="from-date" required>
                        </div>
                        <div class="form-group">
                            <label for="to-date"><b>To:</b> </label>
                            <input type="date" id="to-date" name="to-date" required>
                        </div>
                        <button type="submit" class="btn btn-primary">show-with-range</button>
                    </form>
                </div>
            </div>

            <div class="card text-center">
                <div class="card-body px-5" style="background-color:#b4e364">
                    <form action="display-with-game-type">
                        <div class="from-group">
                            <input type="checkbox" id="football" name="game" value="Football" checked>
                            <label for="football">Football</label>
                        </div>
                        <div class="from-group">
                            <input type="checkbox" id="circket" name="game" value="Circket">
                            <label for="circket">Circket</label>
                        </div>
                        <div class="from-group">
                            <input type="checkbox" id="baseball" name="game" value="Baseball">
                            <label for="baseball">Baseball</label>
                        </div>
                        <div class="from-group">
                            <input type="checkbox" id="mma" name="game" value="MMA">
                            <label for="mma">MMA</label>
                        </div>
                        <div class="from-group">
                            <input type="checkbox" id="ice-hockey" name="game" value="Ice-Hockey">
                            <label for="ice-hockey">Ice-Hockey</label>
                        </div>
                        <button type="submit" class="btn btn-primary">show-with-game</button>
                    </form>
                </div>

                <div class="card text-center">
                    <div class="card-body px-5" style="background-color:#b4e364">
                        <div class="form-group">
                            <form action="home">
                                <button type="submit" class="btn btn-primary">show-all-event</button>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>


<!-- Add button Modal -->
<div class="modal fade" id="addModal" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="card text-center">
                <div class="card-body px-5" style="background-color:#a9b7f5">
                    <h2 class="modal-title" id="exampleModalLabel">Add event</h2>
                </div>
            </div>
            <div class="card text-center">
                <div class="card-body px-5" style="background-color:#9bfab9">
                    <form method="post" action="add-event">
                        <div class="form-group">
                            <label for="event-date">Event-data:</label>
                            <input type="date" id="event-date" name="event-date" required>
                        </div>
                        <div class="form-group">
                            <label for="event-time">Event-time:</label>
                            <input type="time" id="event-time" name="event-time" required>
                        </div>
                        Event-Type:
                        <div class="form-group">
                            <input type="radio" id="football-game" name="event-type" value="Football" checked>
                            <label for="football-game">Football </label><br>
                            <input type="radio" id="circket-game" name="event-type" value="Circket">
                            <label for="circket-game">Circket </label><br>
                            <input type="radio" id="baseball-game" name="event-type" value="Baseball">
                            <label for="baseball-game">Baseball </label><br>
                            <input type="radio" id="mma-game" name="event-type" value="MMA">
                            <label for="mma-game">MMA </label><br>
                            <input type="radio" id="icehockey-game" name="event-type" value="Ice-Hockey">
                            <label for="mma-game">Ice-Hockey </label><br>
                        </div>
                        <div class="form-group">
                            <label for="event-name">Event-name:</label>
                            <input type="text" id="event-name" name="event-name" required>
                        </div>
                        <div class="modal-footer form-group text-center">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Add</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Add button Modal End -->


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
    const event = ([[${event}]]);
    console.log(event[0][0]);

    $(document).ready(function () {
        $('#calendar').evoCalendar({
            calendarEvents: event[0][0]
        })
    })
</script>

</body>
</html>