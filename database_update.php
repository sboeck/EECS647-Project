<?php
// Check if user is logged in, redirect if not
session_start();
if(isset($_SESSION['username'])) {
echo "<form method=\"post\" action=\"logout.php\">
	Welcome, " . $_SESSION['username'] . ". You are logged in.
	<input type=\"submit\" value = \"Logout\" class=\"login\">
	</form>";
}
else
{
header("location:home.php?error=2");
}
?>

<html>
<head>
<title>Update</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="style.css" />

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
<h2>Database Update</h2>
<p>Please complete forms to add new records to the database.</p>

<?php
// Check if a query failed
if(!empty($_GET["error"])){
echo "<p style=\"color:red\">Update failed, check your input.</p>";
}
// Check if a query succeeded
if(!empty($_GET["success"])){
echo "<p style=\"color:blue\">Update successful.</p>";
}
?>

<form method="post" action="add_event.php">
	<fieldset>
		<legend>Add Event</legend>
		<p><label class="field" for="Region">Region:</label><select name="region">
			<option value="Kansas City">Kansas City
			<option value="NE Oklahoma">NE Oklahoma
			<option value="Salina">Salina
			<option value="Wichita">Wichita</select></p>
		<p><label class="field" for="Event ID">Event ID:</label><input type="number" name="eventid"></p>
		<p><label class="field" for="Location">Location:</label><input type="text" name="location"></p>
		<p><label class="field" for="Date">Date:</label><input type="date" name="date" class="textbox-300"></p>
		<input type="submit">
	</fieldset>
</form><br>

<form method="post" action="add_result.php">
	<fieldset>
		<legend>Add Driver Result</legend>
		<p><label class="field" for="Event ID">Event ID:</label><input type="number" name="eventid"></p>
		<p><label class="field" for="Member ID">Member ID:</label><input type="number" name="memberid"></p>
		<p><label class="field" for="Points">Points:</label><input type="number" name="points"></p>
		<p><label class="field" for="Time">Time:</label><input type="text" name="time"></p>
		<p><label class="field" for="Class">Class:</label><input type="text" name="class"></p>
		<p><label class="field" for="Class">Car Number:</label><input type="number" name="carnum"></p>
		<p><label class="field" for="Class">Car Model:</label><input type="text" name="carmodel"></p>
		<input type="submit">
	</fieldset>
</form><br>

<form method="post" action="add_member.php">
	<fieldset>
		<legend>Add New Member</legend>
		<p><label class="field" for="Member ID">Member ID:</label><input type="number" name="memberid"></p>
		<p><label class="field" for="Name">Name:</label><input type="text" name="name"></p>
		<input type="submit">
	</fieldset>
</form><br>
</div>

</body>
</html>
