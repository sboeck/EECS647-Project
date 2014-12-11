<html>
<head>
<title>About ADS</title>
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
<h2>About the Autocross Data System</h2>
<p>
The Autocross Data System is a database of races and driver times.
Here you can find information about autocross events, such as who attended an event and who got the fastest time.
To use our website, please visit the Find Results page. You can enter the event ID number to find the results from
that event. If you don't know the event ID number, you can search for a list of events by choosing a region and year
to search in. If you'd like to find the results of a race you've attended, try using the "Find Driver Results by Name" 
form to search for your name. To compare how you are doing to other drivers, use the "See Current Standings" form. Just
select your region, and every driver's total points for the current year are listed. At the end of the year, if you are
the fastest driver in your class, you will be added to the hall of fame page!
</p>
<p>
If you are a registered user, then you can use the database update page to add events/results/drivers to the database.
To apply to become a registered user, contact a local autocross board member.
</p>
<h2>About Autocross</h2>
<img src="autocross.jpg" height="275" width="750">
<p>
Autocross is the sport of timed competition between car drivers. It is a fun and safe way to race without needing a race car; 
almost any car in good mechanical condition is capable of autocross, that includes family sedans, sports cars, even some trucks.
Competition is divided into classes, so just because your car is slow doesn't mean it can't compete. It's the driver skill that
matters!
</p>
<p>
For more information, see these autosport associations:
</p>
<p>
<a href="https://www.nasaproracing.com/">National Auto Sport Association</a>
</p>
<p>
<a href="http://www.scca.com/">Sports Car Club of America</a>
</p>
</div>

</body>
</html>