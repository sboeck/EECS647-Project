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
$year = $_GET["year"];

//
// Make a database query and save the result in $query_result
//
$my_query = "SELECT EVENT.Event_ID, EVENT.Location, EVENT.Date
			 FROM EVENT, HOST
			 WHERE EVENT.Event_ID = HOST.Event_ID
			 AND Region_name = '" . $region . "'
			 AND Year = '" . $year . "'
			 ORDER BY EVENT.Event_ID";
			
$query_result = $conn->query($my_query);

// If the query returned any results
if($row = $query_result->fetch_assoc()){

// The html tag MUST begin here, not before the php script
// in order for redirect to work correctly
	echo "<html>
		<head>
		<title>Query results</title>
		</head>
		<body>
		Events hosted by " . $region . " during " . $year . ":";

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

	echo "<table><tr><th>EventID</th><th>Location</th><th>Date</th>";
	do {
		echo "<tr>
				<td><a href=\"drivers.php?Event_ID=" . $row["Event_ID"] . "\">" . $row["Event_ID"] . "</a> </td>
				<td>" . $row["Location"] . "</td>
				<td>" . $row["Date"] . "</td>
			</tr>";
	} while($row = $query_result->fetch_assoc());

	echo "</table>
		</body>
		</html>";

} else {
	// Redirect and set error flag to display no results
	header("Location: " . "http://" . $_SERVER['HTTP_HOST'] . "/database_lookup.php?error=1") ;
}
?> 