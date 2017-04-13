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


                   $name = $_POST['name'];
                   $email = $_POST['email'];
                   $mobile = $_POST['phone'];
                   $co = $_POST['comment'];
                    
                    
                    

 
$sql =  "INSERT INTO feedback(name,email,mobile,comment) VALUES ('$name','$email','$mobile','$co')";
if ($conn->query($sql) === TRUE) 
{
    echo "<script type='text/javascript'>alert('Feeback sent sucessfully!!!');</script><br>";
}
else{ 
   //echo "Error: " . $sql . "<br>" . $conn->error;
    echo "<script type='text/javascript'>alert('Invalid Entry!!');</script><br>";
    
}




 $conn->close();
?>

