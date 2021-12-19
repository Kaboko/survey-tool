<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$DB_SERVER="127.0.0.1";
$DB_USERNAME="root";
$DB_PASSWORD='';
$DB_NAME="quiz_db";
 
/* Attempt to connect to MySQL database */
$link = mysqli_connect($DB_SERVER, $DB_USERNAME, $DB_PASSWORD, $DB_NAME);
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$nlang = mysqli_real_escape_string($link, $_REQUEST['nlanguage']);
$email = mysqli_real_escape_string($link, $_REQUEST['email_address']);
 
// Attempt insert query execution
$sql = "INSERT INTO users (nlanguage, email_address) VALUES ('$nlang', '$email')";
if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
header("location: ask_form.php");
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);


?>