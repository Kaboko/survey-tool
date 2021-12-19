<?php
/* Database credentials. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$DB_SERVER="127.0.0.1";
$DB_USERNAME="root";
$DB_PASSWORD='';
$DB_NAME="quiz_db";
 
/* Attempt to connect to MySQL database */
$link = mysqli_connect($DB_SERVER, $DB_USERNAME, $DB_PASSWORD, $DB_NAME);
 
// Check connection
if($link === false){
    die("ERROR: Could not connect to DB " . mysqli_connect_error());
}
?>