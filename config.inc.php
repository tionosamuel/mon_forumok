<?php

define('APP', 'Forum');

define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '3719');
define('DB_NAME', 'myforum_db');

//make a database connection
if(!$con = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME))
{
	die("Could not connect to database");
}