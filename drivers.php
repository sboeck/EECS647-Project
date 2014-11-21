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
while($row = $query_result->fetch_assoc()){
	echo "Name: " . $row["Name"] . 
		 " Time: " . $row["Time"] . 
		 " Points: " . $row["Points"] . 
		 " Class_name: " . $row["Class_name"] . 
		 " Car_Model: " . $row["Car_Model"] . 
		 " Car_Num: " . $row["Car_Num"] . 
		 "<br>";
}
 
?> 

</body>
</html>