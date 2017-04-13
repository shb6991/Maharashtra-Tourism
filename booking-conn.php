

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
$selected=$_POST['1'];



echo '

 <body>
        
     
     <head>
            <title>WELCOME TO MAHARASHTRA TOURISM</title>
            <link rel="stylesheet" type="text/css" href="style.css">
         <link rel="stylesheet" type="text/css" href="bookings.css">
            
        </head>
       
    
            <div id="nav_wrap"><br>
                <ul>
                    <li><a href="home.html">HOME</a></li>
                    <li><a href="bookings.html">BOOKINGS</a></li>
                    <li><a href="feedback.html">FEEDBACK</a></li>
                    <li><a href="#">EXPLORE <span>&#8595;</span> </a>
                    
                        <ul>
                        <li><a href="#">FORTS <span>&#8594;</span></a>
                            
                            <ul>
                                <li><a href="pratab.html">PRATABGAD</a></li>
                                <li><a href="shivneri.html">SHIVNERI</a></li>
                                <li><a href="raigad.html">RAIGAD</a></li>
                                <li><a href="sindhudurga.html">SINDHUDURGA</a></li>
                                <li><a href="panhala.html">PANHALA</a></li>
                            </ul>
                            
                            </li>
                        <li><a href="#">BEACHES <span>&#8594;</span></a>
                            <ul>
                                <li><a href="ganpatipule.html">GANPATIPULE</a></li>
                                <li><a href="diveagar.html">DIVEAGAR</a></li>
                                <li><a href="guhagar.html">GUHAGAR</a></li>
                                <li><a href="kihim.html">KIHIM</a></li>
                                
                            </ul>
                            </li>
                        <li><a href="#">HILL-STATIONS</a><span>&#8595;</span>
                            <ul>
                               <li><a href="bhimashankar.html">BHIMASHANKAR</a></li>
                                <li><a href="lonavala.html">LONAVALA</a></li>
                                <li><a href="matheran.html">MATHERAN</a></li>
                                <li><a href="mahableshwar.html">MAHABLESHWAR</a></li>
                                
                            </ul>
                            </li>
                        </ul>
                        
                    </li>
                    
                </ul>
                
               
               </div> <!--nav--><br>  
             
            
            
            <div id="booking"><br><br>
                <div id="book">
                 <center>
                     <font><table border="1" height="50%" width="50%"><tr><th>Available Hotels in '.$selected.' Are:</th></tr>
                     ';
$i=1;
$sql = "SELECT ".$selected." FROM agency";
 $result = $conn->query($sql);
if ($result->num_rows > 0) {
    //echo "true";
    // output data of each row
    if($selected == "mumbai" )
    {
   while($row = $result->fetch_assoc()) {
         echo '<tr><td>'. $i.'. '.$row['mumbai'].'</td></tr>';
        $i=$i+1;
    }
    }
    if($selected == "pune" )
    {
   while($row = $result->fetch_assoc()) {
         echo '<tr><td>'. $i.'. '.$row['pune'].'</td></tr>';
         $i=$i+1;
    }
    }
    if($selected == "kolhapur" )
    {
   while($row = $result->fetch_assoc()) {
         echo '<tr><td>'. $i.'. '.$row['kolhapur'].'</td></tr>';
         $i=$i+1;
    }
    }
    if($selected == "nashik" )
    {
   while($row = $result->fetch_assoc()) {
         echo '<tr><td>'.$i.'. '. $row['nashik'].'</td></tr>';
         $i=$i+1;
    }
        
    }
        if($selected == "konkan" )
    {
   while($row = $result->fetch_assoc()) {
         echo '<tr><td>'. $i.'. '.$row['konkan'].'</td></tr>';
         $i=$i+1;
    }
    
}
}
else {
    echo "0 results";
}
echo '</table></font>
                    </center>
                       
                </div>
            </div><!--shiv-->
            
        
            
            
     </div><!--nav_wrap-->
     
    </body>
';




$conn->close();
?>
