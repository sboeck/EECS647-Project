<html>
<head>
<title>Query results</title>
</head>
<body>

<?php
 
//
// Connect to the database and use the autocross database
//
$conn = mysqli_connect('localhost', 'phpdev', 'password', 'autocross')
	or die('Could not connect: ' . mysql_error());

//
// Make a database query and save the result in $query_result
//
$my_query = "SELECT EVENT.Event_ID, EVENT.Location, EVENT.Date
			 FROM EVENT, HOST
			 WHERE EVENT.Event_ID = HOST.Event_ID
			 AND Region_name = '" . $_GET["region"] . "'
			 AND Year = '" . $_GET["year"] . "'
			 ORDER BY EVENT.Event_ID";
			
$query_result = $conn->query($my_query);

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
	background-color:#eee;
}

</style>";

echo "<table><tr><th>EventID</th><th>Location</th><th>Date</th>";
while($row = $query_result->fetch_assoc()){
	echo "<tr>
			<td><a href=\"drivers.php?Event_ID=" . $row["Event_ID"] . "\">" . $row["Event_ID"] . "</a> </td>
			<td>" . $row["Location"] . "</td>
			<td>" . $row["Date"] . "</td>
		</tr>";
}

echo "</table>"
?> 

</body>
</html>