
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <title>Sport events</title>
  <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/evo-calendar.min.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/evo-calendar.midnight-blue.min.css" />" rel="stylesheet">
</head>

<body>
<div class="main-page">
  <div id="calendar"></div>
</div>

<script src=" https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.min.js "></script>
<script src="<c:url value="/resources/js/evo-calendar.min.js"/>"></script>
<script>
  $(document).ready(function() {
    $('#calendar').evoCalendar({
      calendarEvents: [{
        id: 'bHay68s', // Event's ID (required)
        name: "New Year", // Event name (required)
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