<html>
<head>
<title>Update</title>
</head>
<body>
<?php
session_start();
if(isset($_SESSION["username"]) && isset($_SESSION["password"])){
header("location:main_login.php");
}
?>

Login Successful

</body>
</html>
