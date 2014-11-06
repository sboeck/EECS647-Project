<?php
 
//
// Connect to the database and use the autocross database
//
$conn = mysqli_connect('localhost', 'phpdev', 'password', 'autocross')
	or die('Could not connect: ' . mysql_error());
echo "Connected successfully <br>";

//
// Make a database query and save the result in $query_result
//
$my_query = "SELECT * FROM DRIVERS";
$query_result = $conn->query($my_query);

//
// Display the results of the query
//
while($row = $query_result->fetch_assoc()){
	echo "MemberID: " . $row["Member_ID"] . " Name: " . $row["Name"] . "<br>";
}
 
?> 
