<?php 
	$server     = 'localhost';
	$username   = 'root';
	$password   = '';
	$database   = 'db_elearning';
	
	mysqli_connect($server, $username, $password) OR DIE ();
	mysqli_select_db($database) OR DIE ();
?>