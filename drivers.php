<html>
<head>
<title>Query results</title>
</head>
<body bgcolor="#E0E0E0">

<?php
session_start();
if(isset($_SESSION['username'])) {
echo "<form method=\"post\" action=\"logout.php\">
	Welcome, " . $_SESSION['username'] . ". You are logged in.
	<input type=\"submit\" value = \"Logout\">
	</form>";
}
else
{
echo "<form method=\"post\" action=\"checklogin.php\">
	Username <input type=\"text\" name=\"username\">
	Password <input type=\"password\" name=\"password\">
	<input type=\"submit\">
	</form>";
}
?>

<p>
<a href="home.php">Home</a>
<a href="database_lookup.php">Find Results</a>
<a href="hall_of_fame.php">Hall of Fame</a>
<a href="about.php">About</a>
<a href="database_update.php">Database Update</a>
</p>

<?php 
 
//
// Connect to the database and use the autocross database
//
$conn = mysqli_connect('localhost', 'phpdev', 'password', 'autocross')
	or die('Could not connect: ' . mysql_error());

//
// Save form input into variables
//
$eventid = $_GET["Event_ID"];

//
// Make a database query and save the result in $query_result
//
$my_query = "SELECT Name, Time, Points, Class_name, Car_Model, Car_Num
			 FROM CLASS, DRIVERS
			 WHERE CLASS.Member_ID = DRIVERS.Member_ID
			 AND Event_ID = '" . $eventid . "'
			 ORDER BY Class_name, Time";
			
$query_result = $conn->query($my_query);

// If the query returned any results
if($row = $query_result->fetch_assoc()){

	echo "Results for Event_ID " . $eventid . ":";

	//
	// Display the results of the query
	//
	echo "<style>
	table, td {
		border: 1px solid black;
		border-collapse: collapse;
	}
	th  {
		border: 1px solid black;
		border-collapse: collapse;
		background-color:#C0C0C0;
	}
	tr  {
		background-color:#FFFFFF;
	}
	</style>";
	echo "<table><tr><th>Name</th><th>Time</th><th>Points</th><th>Class_name</th><th>Car_Model</th><th>Car_Num</th>";
	do {
		echo "<tr>
				<td>" . $row["Name"] . 
			 "</td><td>" . $row["Time"] . 
			 "</td><td>" . $row["Points"] . 
			 "</td><td>" . $row["Class_name"] . 
			 "</td><td>" . $row["Car_Model"] . 
			 "</td><td>" . $row["Car_Num"] . 
			 "</td></tr>";
	} while($row = $query_result->fetch_assoc());

	echo "</table>";

} else {
	// Redirect and set error flag to display no results
	header("Location: http://" . $_SERVER['HTTP_HOST'] . "/database_lookup.php?error=1");
	exit;
}
?> 

</body>
</html>