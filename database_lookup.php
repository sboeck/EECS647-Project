<html>
<head>
<title>Find Results</title>
</head>
<link rel="stylesheet" type="text/css" href="style.css" />
<body>
<?php
session_start();
if(isset($_SESSION['username'])) {
echo "<form method=\"post\" action=\"logout.php\">
	Welcome, " . $_SESSION['username'] . ". You are logged in.
	<input type=\"submit\" value = \"Logout\" class=\"login\">
	</form>";
}
else
{
echo "<form method=\"post\" action=\"checklogin.php\" class=\"login\">
	Username: <input type=\"text\" name=\"username\" class=\"login\">
	Password: <input type=\"password\" name=\"password\" class=\"login\">
	<input type=\"submit\" value=\"Login\" class=\"login\">
	</form>";
}
?>

<div class="navigation">
<img src="banner.png"><br>
<span>
<a href="home.php">Home</a>
<a href="database_lookup.php">Find Results</a>
<a href="hall_of_fame.php">Hall of Fame</a>
<a href="about.php">About</a>
<a href="database_update.php">Database Update</a>
</span>
</div>

<div>
<h2>Find Results</h2>
<?php
// Check if a query returned no results
if(!empty($_GET["error"])){
	echo "<p><span class=\"error\">No results found.</span></p>";
}
?>
<form method="get" action="events.php">
	<fieldset>
		<legend>Find Events</legend>
		<p><label class="field" for="Region">Region:</label><select name="region">
			<option value="Kansas City">Kansas City
			<option value="NE Oklahoma">NE Oklahoma
			<option value="Salina">Salina
			<option value="Wichita">Wichita</select>
		<p><label class="field" for="year">Year:</label><select name="year"></p>
			<option value="2014">2014
			<option value="2013">2013
			<option value="2012">2012</select></p>
		<input type="submit">
	</fieldset>
</form><br>

<form method="get" action="drivers.php">
	<fieldset>
		<legend>Find Event Results</legend>
		<p><label class="field" for="Event ID">Event ID:</label><input type="text" name="Event_ID" class="textbox-300"></p>
		<input type="submit">
	</fieldset>
</form><br>

<form method="get" action="driversearch.php">
	<fieldset>
		<legend>Find Driver Results by Name</legend>
		<p><label class="field" for="Event ID">First + Last Name:</label><input type="text" name="name" class="textbox-300"></p>
		<p><label class="field" for="Region">Region:</label><select name="region">
			<option value="Kansas City">Kansas City
			<option value="NE Oklahoma">NE Oklahoma
			<option value="Salina">Salina
			<option value="Wichita">Wichita</select></p>
		<input type="submit">
	</fieldset>
</form><br>

<form method="get" action="standings.php">
	<fieldset>
		<legend>See Current Standings</legend>
		<p><label class="field" for="Region">Region:</label><select name="region">
			<option value="Kansas City">Kansas City
			<option value="NE Oklahoma">NE Oklahoma
			<option value="Salina">Salina
			<option value="Wichita">Wichita</select></p>
		<input type="submit">
	</fieldset>
</form><br>
</div>
</body>
</html>
