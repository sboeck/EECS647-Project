<html>
<head>
<title>Find Results</title>
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

<?php
// Check if a query returned no results
if(!empty($_GET["error"])){
echo "<p style=\"color:red\">No results found.</p>";
}
?>

<b>Find Events</b>
<form method="get" action="events.php">
Region:<select name="region">
		<option value="Kansas City">Kansas City
		<option value="NE Oklahoma">NE Oklahoma
		<option value="Salina">Salina
		<option value="Wichita">Wichita</select>
Year:<select name="year">
		<option value="2014">2014
		<option value="2013">2013
		<option value="2012">2012</select>
<input type="submit">
</form><br>

<b>Find Event Results</b>
<form method="get" action="drivers.php">
Event ID:<input type="text" name="Event_ID">
<input type="submit">
</form><br>

<b>Find Driver Results by Name</b>
<form method="get" action="driversearch.php">
First + Last Name:<input type="text" name="name">
Region:<select name="region">
		<option value="Kansas City">Kansas City
		<option value="NE Oklahoma">NE Oklahoma
		<option value="Salina">Salina
		<option value="Wichita">Wichita</select>
<input type="submit">
</form><br>

<b>See Current Standings</b>
<form method="get" action="standings.php">
Region:<select name="region">
		<option value="Kansas City">Kansas City
		<option value="NE Oklahoma">NE Oklahoma
		<option value="Salina">Salina
		<option value="Wichita">Wichita</select>
<input type="submit">
</form><br>

</body>
</html>
