<?php
//
// Connect to the database and use the autocross database
//
$conn = mysqli_connect('localhost', 'phpdev', 'password', 'autocross')
	or die('Could not connect: ' . mysql_error());

//
// Save form input into variables
//
$memberid = $_POST["memberid"];
$name = $_POST["name"];

// Check for null entries
if(!($memberid and $name)){
	header("Location: http://" . $_SERVER['HTTP_HOST'] . "/database_update.php?error=1");
	exit;
}

//
// Make a database query and check for success
//

$my_query = "INSERT INTO DRIVERS VALUES ('" . $memberid . "', '" . $name . "')";

if(mysqli_query($conn, $my_query)){

	header("Location: http://" . $_SERVER['HTTP_HOST'] . "/database_update.php?success=1");
	
} else {
	// Redirect and set error flag to display update error
	header("Location: http://" . $_SERVER['HTTP_HOST'] . "/database_update.php?error=3");
}
?> 