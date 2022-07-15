<?php

require "config/constants.php";

$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$dbname = 'artisthetic';
	$con=mysqli_connect($dbhost,$dbuser,$dbpass);
	if(!$con)
				{
				die('Could not connect:'.mysqli_connect_error());
				}
			mysqli_select_db($con,$dbname);
?>