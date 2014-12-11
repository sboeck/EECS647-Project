<html>
<head>
<title>Autocross Data System Home</title>
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

<?php
// Check for login failure
if(!empty($_GET["error"])){
	if($_GET["error"] == 1){
		echo "<span class=\"error\">Login failed, try again.</span>";
	}else{
		echo "<span class=\"error\">You are not logged in.</span>";
	}
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
<h2>Welcome to the Autocross Data System</h2>
<p>Visit the find results page to find the outcomes of races, 
see the hall of fame, or learn more on the about page. Please login to update the database.</p>
</div>
</body>
</html>