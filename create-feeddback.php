<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mydata";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
// sql to create table
$sql = "CREATE TABLE feedback (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(30) NOT NULL,
email VARCHAR(50),
mobile BIGINT(20),
comment VARCHAR(150),
reg_date TIMESTAMP
)";

if ($conn->query($sql) === TRUE) {
    echo "Table feedback created successfully";
} else {
    echo "Error creating table: " . $conn->error;
}

$conn->close();
?>