<?php
 
//
// Connect to the database and use the autocross database
//
$conn = mysqli_connect('localhost', 'phpdev', 'password', 'autocross')
	or die('Could not connect: ' . mysql_error());

//
// Save form input into variables
//
$eventid = $_POST["eventid"];
$memberid = $_POST["memberid"];
$points = $_POST["points"];
$time = $_POST["time"];
$class = $_POST["class"];
$carnum = $_POST["carnum"];
$carmodel = $_POST["carmodel"];

// Check for null entries
if(!($eventid and $memberid and $points and $time and $class and $carnum and $carmodel)){
	header("Location: http://" . $_SERVER['HTTP_HOST'] . "/database_update.php?error=1");
	exit;
}

//
// Make a database query and check for success
//
$my_query = "INSERT INTO CLASS VALUES 
	('".$eventid."', '".$memberid."', '".$points."', '".$time."', '".$class."', '".$carnum."', '".$carmodel."')";

if(mysqli_query($conn, $my_query)){

	header("Location: http://" . $_SERVER['HTTP_HOST'] . "/database_update.php?success=1");
	
} else {
	// Redirect and set error flag to display update error
	header("Location: http://" . $_SERVER['HTTP_HOST'] . "/database_update.php?error=1");
}

?> 