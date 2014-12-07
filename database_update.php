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
header("location:home.php?error=2");
}
?>

<html>
<head>
<title>Update</title>
</head>
<body bgcolor="#E0E0E0">
<img src="https://dl.dropboxusercontent.com/s/t88rkqc13nno1al/bannerv2.png">
<p>
<a href="home.php">Home</a>
<a href="database_lookup.php">Find Results</a>
<a href="hall_of_fame.php">Hall of Fame</a>
<a href="about.php">About</a>
<a href="database_update.php">Database Update</a>
</p>

<p>Login Successful. Please complete forms to add new records to the database.</p>

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

<!-- CSS formatting -->
<style>
fieldset {
	width: 500px;
}
legend {
	font-size: 20px;
}
label.field {
	text-align: right;
	width: 100px
}
input.textbox-300 {
	width: 300px;
}
fieldset p{
	clear: both;
	padding: 5px;
}
</style>

<form method="post" action="add_event.php">
	<fieldset>
		<legend>Add Event</legend>
		<p><label class="field" for="Region">Region:</label><select name="region">
			<option value="Kansas City">Kansas City
			<option value="NE Oklahoma">NE Oklahoma
			<option value="Salina">Salina
			<option value="Wichita">Wichita</select></p>
		<p><label class="field" for="Event ID">Event ID:</label><input type="number" name="eventid" class="textbox-300"></p>
		<p><label class="field" for="Location">Location:</label><input type="text" name="location" class="textbox-300"></p>
		<p><label class="field" for="Date">Date:</label><input type="date" name="date" class="textbox-300"></p>
		<input type="submit">
	</fieldset>
</form><br>

<form method="post" action="add_result.php">
	<fieldset>
		<legend>Add Driver Result</legend>
		<p><label class="field" for="Event ID">Event ID:</label><input type="number" name="eventid" class="textbox-150"></p>
		<p><label class="field" for="Member ID">Member ID:</label><input type="number" name="memberid" class="textbox-150"></p>
		<p><label class="field" for="Points">Points:</label><input type="number" name="points" class="textbox-100"></p>
		<p><label class="field" for="Time">Time:</label><input type="text" name="time" class="textbox-100"></p>
		<p><label class="field" for="Class">Class:</label><input type="text" name="class" class="textbox-100"></p>
		<p><label class="field" for="Class">Car Number:</label><input type="number" name="carnum" class="textbox-150"></p>
		<p><label class="field" for="Class">Car Model:</label><input type="text" name="carmodel" class="textbox-150"></p>
		<input type="submit">
	</fieldset>
</form><br>

<form method="post" action="add_member.php">
	<fieldset>
		<legend>Add New Member</legend>
		<p><label class="field" for="Member ID">Member ID:</label><input type="number" name="memberid" class="textbox-150"></p>
		<p><label class="field" for="Name">Name:</label><input type="text" name="name" class="textbox-150"></p>
		<input type="submit">
	</fieldset>
</form><br>


</body>
</html>
