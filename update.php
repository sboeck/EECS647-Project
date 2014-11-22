<html>
<head>
<title>Update</title>
</head>
<body>
<?php
session_start();
if(!session_is_registered(myusername)){
header("location:main_login.php");
}
?>

Login Successful

</body>
</html>
