<?php
//
// Connect to the database and use the autocross database
//
$conn = mysqli_connect('localhost', 'phpdev', 'password', 'autocross')
	or die('Could not connect: ' . mysql_error());

//
// Save form input into variables
//
$region = $_POST["region"];
$eventid = $_POST["eventid"];
$date = $_POST["date"];
$location = $_POST["location"];
$year = substr($date, 0, 4);;

// Check for null entries
if(!($region and $eventid and $date and $location and $year)){
	header("Location: http://" . $_SERVER['HTTP_HOST'] . "/database_update.php?error=1");
	exit;
}

//
// Make a database query and check for success
//
$query1 = "INSERT INTO EVENT VALUES ('" . $eventid . "', '" . $location . "', '" . $date . "')";
$query2 = "INSERT INTO HOST VALUES ('" . $eventid . "', '" . $region . "', '" . $year . "')";

if(mysqli_query($conn, $query1) and mysqli_query($conn, $query2)){

	header("Location: http://" . $_SERVER['HTTP_HOST'] . "/database_update.php?success=1");
	
} else {
	// Redirect and set error flag to display update error
	header("Location: http://" . $_SERVER['HTTP_HOST'] . "/database_update.php?error=3");
}
?> 