<html>
<head>
<title>Hall of Fame</title>
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
<img src="https://dl.dropboxusercontent.com/s/t88rkqc13nno1al/bannerv2.png">

<p>
<a href="home.php">Home</a>
<a href="database_lookup.php">Find Results</a>
<a href="hall_of_fame.php">Hall of Fame</a>
<a href="about.php">About</a>
<a href="database_update.php">Database Update</a>
</p>

<h2>The Hall of Fame</h2>
<p>History of First Place Winners</p>

<?php
//
// Connect to the database and use the autocross database
//
$conn = mysqli_connect('localhost', 'phpdev', 'password', 'autocross')
	or die('Could not connect: ' . mysql_error());

//
// Make a database query and save the result in $query_result
//
$my_query = "SELECT *
			FROM SUM_POINTS s
			WHERE NOT EXISTS
				(SELECT s.Total_points, s.Class_name, s.Region_name
				FROM SUM_POINTS
				WHERE Total_points > s.Total_points
				AND Class_name = s.Class_name
				AND Region_name = s.Region_name
				AND Year = s.Year)
			AND NOT Year = DATE_FORMAT(CURDATE(), '%Y')
			ORDER BY Year, Region_name";
			
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
	background-color:#C0C0C0;
}
tr  {
	background-color:#FFFFFF;
}
</style>";

echo "<table><tr><th>Name</th><th>Total Points</th><th>Class</th><th>Region</th><th>Year</th>";
while($row = $query_result->fetch_assoc()){
	echo "<tr>
			<td>" . $row["Name"] . "</td>
			<td>" . $row["Total_points"] . "</td>
			<td>" . $row["Class_name"] . "</td>
			<td>" . $row["Region_Name"] . "</td>
			<td>" . $row["Year"] . "</td>
		</tr>";
}
echo "</table>";
?>

</body>
</html>
