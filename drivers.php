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
$my_query = "SELECT Name, Time, Points, Class_name, Car_Model, Car_Num
			 FROM CLASS, DRIVERS
			 WHERE CLASS.Member_ID = DRIVERS.Member_ID
			 AND Event_ID = '" . $_GET["Event_ID"] . "'
			 ORDER BY Class_name, Time";
			
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
echo "<table><tr><th>Name</th><th>Time</th><th>Points</th><th>Class_name</th><th>Car_Model</th><th>Car_Num</th>";
while($row = $query_result->fetch_assoc()){
	echo "<tr>
			<td>" . $row["Name"] . 
		 "</td><td>" . $row["Time"] . 
		 "</td><td>" . $row["Points"] . 
		 "</td><td>" . $row["Class_name"] . 
		 "</td><td>" . $row["Car_Model"] . 
		 "</td><td>" . $row["Car_Num"] . 
		 "</td></tr>";
}
echo "</table>"
?> 

</body>
</html>