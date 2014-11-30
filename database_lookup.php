<html>

<head>
<title>Database Lookup</title>
</head>

<body>

<form method="post" action="checklogin.php">
Username <input type="text" name="username">
Password <input type="text" name="password">
<input type="submit">
</form>

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
