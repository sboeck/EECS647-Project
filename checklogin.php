<html>
<head>
<title>Login Check</title>
</head>
<body>

<?php


// Connect to server and select databse.

$conn = mysqli_connect('localhost', 'phpdev', 'password', 'autocross')
	or die('Could not connect: ' . mysql_error());

// username and password sent from form 
$username=$_POST['username']; 
$password=$_POST['password']; 

// To protect MySQL injection (more detail about MySQL injection)
$username = stripslashes($username);
$password = stripslashes($password);
$username = mysql_real_escape_string($username);
$password = mysql_real_escape_string($password);

$my_query = "SELECT *
		FROM users
		WHERE username = '$username'
		AND password = '$password'";


$query_result = $conn->query($my_query);

// Mysql_num_row is counting table row
$count=mysql_num_rows($query_result);

// If result matched $username and $password, table row must be 1 row
if($count==1){

// Register $username, $password and redirect to file "update.php"
session_register("username");
session_register("password"); 
header("location:update.php");
}
else {
echo "Wrong Username or Password";
}
?>


</body>
</html>