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
			 HERE CLASS.Member_ID = DRIVERS.Member_ID
			 AND Event_ID = '" . $_POST["Event_ID"] . "'";
			
$query_result = $conn->query($my_query);

//
// Display the results of the query
//
while($row = $query_result->fetch_assoc()){
	echo "EventID: " . $row["Event_ID"] . 
		 " Location: " . $row["Location"] . 
		 " Date: " . $row["Date"] . 
		 "<br>";
}
 
?> 

</body>
</html>