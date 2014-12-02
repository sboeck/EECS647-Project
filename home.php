<html>

<head>
<title>Autocross Data System Home</title>
</head>

<body>

<form method="post" action="checklogin.php">
Username <input type="text" name="username">
Password <input type="password" name="password">
<input type="submit">
</form>

<?php
// Check for login failure
if(!empty($_GET["error"])){
	if($_GET["error"] == 1){
		echo "<p style=\"color:red\">Login failed, try again.</p>";
	}else{
		echo "<p style=\"color:red\">You are not logged in.</p>";
	}
}
?>

<p>
<a href="home.html">Home</a>
<a href="database_lookup.php">Find Results</a>
<a href="hall_of_fame.php">Hall of Fame</a>
<a href="about.html">About</a>
<a href="database_update.php">Database Update</a>
</p>

<h2>Welcome to the Autocross Data System</h2>
<p>Visit the find results page to find the outcomes of races, 
see the hall of fame, or learn more on the about page. Please login to update the database.</p>

</body>
</html>