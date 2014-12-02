<?php
session_start();
if(isset($_SESSION["username"]) && isset($_SESSION["password"])){
header("location:home.html");
}
?>

<html>
<head>
<title>Update</title>
</head>
<body>

<p>
<a href="home.html">Home</a>
<a href="database_lookup.php">Find Results</a>
<a href="hall_of_fame.php">Hall of Fame</a>
<a href="about.html">About</a>
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

<b>Add Event</b>
<form method="post" action="add_event.php">
Region:<select name="region">
		<option value="Kansas City">Kansas City
		<option value="NE Oklahoma">NE Oklahoma
		<option value="Salina">Salina
		<option value="Wichita">Wichita</select>
Event ID:<input type="number" name="eventid">
Location:<input type="text" name="location">
Date:<input type="date" name="date">
<input type="submit">
</form><br>

<b>Add Driver Result</b>
<form method="post" action="add_result.php">
Event ID:<input type="number" name="eventid">
Member ID:<input type="number" name="memberid">
<br>
Points:<input type="number" name="points">
Time:<input type="text" name="time">
Class:<input type="text" name="class">
<br>
Car Number:<input type="number" name="carnum">
Car Model:<input type="text" name="carmodel">
<input type="submit">
</form><br>

<b>Add New Member</b>
<form method="post" action="add_member.php">
Member ID:<input type="number" name="memberid">
Name:<input type="text" name="name">
<input type="submit">
</form><br>

</body>
</html>
