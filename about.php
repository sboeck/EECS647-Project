<html>
<head>
<title>About ADS</title>
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

<p>
Chris is working on this...
</p>

</body>
</html>