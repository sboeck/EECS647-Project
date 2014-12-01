<html>
<head>
<title>Query results</title>
</head>
<body>

<p>
<a href="home.html">Home</a>
<a href="database_lookup.php">Find Results</a>
<a href="hall_of_fame.php">Hall of Fame</a>
<a href="about.html">About</a>
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
$region = $_GET["region"];

//
// Make a database query and save the result in $query_result
//
$my_query = "SELECT Name, Total_points, Class_name 
			FROM sum_points 
			WHERE Year = DATE_FORMAT(CURDATE(), '%Y')
			AND Region_name = '" . $region . "'
			ORDER BY Class_name, Total_points DESC";
			
$query_result = $conn->query($my_query);

// If the query returned any results
if($row = $query_result->fetch_assoc()){

	echo $region . " current standings:";

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

	</style>";

	echo "<table><tr><th>Name</th><th>Total Points</th><th>Class</th>";
	do {
		echo "<tr>
				<td>" . $row["Name"] . "</td>
				<td>" . $row["Total_points"] . "</td>
				<td>" . $row["Class_name"] . "</td>
			</tr>";
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